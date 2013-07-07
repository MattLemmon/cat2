# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = "chingu"
  s.version = "0.9rc9"

  s.required_rubygems_version = Gem::Requirement.new(">= 1.3.6") if s.respond_to? :required_rubygems_version=
  s.authors = ["ippa"]
  s.date = "2012-09-07"
  s.description = "OpenGL accelerated 2D game framework for Ruby. Builds on Gosu (Ruby/C++) which provides all the core functionality. Chingu adds simple yet powerful game states, prettier input handling, deployment safe asset-handling, a basic re-usable game object and stackable game logic."
  s.email = "ippa@rubylicio.us"
  s.extra_rdoc_files = ["LICENSE", "README.rdoc"]
  s.files = ["LICENSE", "README.rdoc"]
  s.homepage = "http://ippa.se/chingu"
  s.require_paths = ["lib"]
  s.rubyforge_project = "chingu"
  s.rubygems_version = "1.8.24"
  s.summary = "OpenGL accelerated 2D game framework for Ruby."

  if s.respond_to? :specification_version then
    s.specification_version = 3

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<gosu>, [">= 0.7.45"])
      s.add_runtime_dependency(%q<gosu>, [">= 0.7.45"])
      s.add_development_dependency(%q<rspec>, [">= 2.1.0"])
      s.add_development_dependency(%q<watchr>, [">= 0"])
      s.add_development_dependency(%q<rcov>, [">= 0"])
    else
      s.add_dependency(%q<gosu>, [">= 0.7.45"])
      s.add_dependency(%q<gosu>, [">= 0.7.45"])
      s.add_dependency(%q<rspec>, [">= 2.1.0"])
      s.add_dependency(%q<watchr>, [">= 0"])
      s.add_dependency(%q<rcov>, [">= 0"])
    end
  else
    s.add_dependency(%q<gosu>, [">= 0.7.45"])
    s.add_dependency(%q<gosu>, [">= 0.7.45"])
    s.add_dependency(%q<rspec>, [">= 2.1.0"])
    s.add_dependency(%q<watchr>, [">= 0"])
    s.add_dependency(%q<rcov>, [">= 0"])
  end
end
