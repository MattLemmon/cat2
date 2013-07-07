# Run me with:
#
#   $ watchr specs.watchr

# --------------------------------------------------
# Convenience Methods
# --------------------------------------------------
# [32m    [0m
def growl(message)
  growlnotify = `which growlnotify`.chomp
  image = !message.include?('0 failures') ? "~/.watchr_images/failed.png" : "~/.watchr_images/passed.png"

  status = image =~ /failed/ ? '[31m' : '[32m'

  message = message.split('seconds')[1].split(status)[1].split('[0m')[0]

  options = "'Watchr - Chingu specs' -w --image '#{File.expand_path(image)}' -m '#{message}'"
  system %(#{growlnotify} #{options} &)
end

def all_spec_files
  Dir['spec/**/*_spec.rb']
end

def run_spec_matching(thing_to_match)
  matches = all_spec_files.grep(/#{thing_to_match}/i)
  if matches.empty?
    puts "Sorry, thanks for playing, but there were no matches for #{thing_to_match}"  
  else
    run matches.join(' ')
  end
end

def run(files_to_run)
  puts("Running: #{files_to_run}")
  result = `rspec -cfs #{files_to_run}`
  print result
  growl result rescue nil
  no_int_for_you
end

def run_all_specs
  run(all_spec_files.join(' '))
end

# --------------------------------------------------
# Watchr Rules
# --------------------------------------------------
watch('^spec/(.*)_spec\.rb')   { |m| run_spec_matching(m[1]) }
watch('^lib/(.*)\.rb')         { |m| run_spec_matching(m[1]) }
watch('^spec/spec_helper\.rb') { run_all_specs }
watch('^spec/support/.*\.rb')   { run_all_specs }

# --------------------------------------------------
# Signal Handling
# --------------------------------------------------

def no_int_for_you
  @sent_an_int = nil
end

Signal.trap 'INT' do
  if @sent_an_int then      
    puts "   A second INT?  Ok, I get the message.  Shutting down now."
    exit
  else
    puts "   Did you just send me an INT? Ugh.  I'll quit for real if you do it again."
    @sent_an_int = true
    Kernel.sleep 1.5
    run_all_specs
  end
end

# vim:ft=ruby
