
SHELL = /bin/sh

# V=0 quiet, V=1 verbose.  other values don't work.
V = 0
Q1 = $(V:1=)
Q = $(Q1:0=@)
n=$(NULLCMD)
ECHO1 = $(V:1=@$n)
ECHO = $(ECHO1:0=@echo)

#### Start of system configuration section. ####

srcdir = .
topdir = /home/matias/.rvm/rubies/ruby-1.9.3-p362/include/ruby-1.9.1
hdrdir = /home/matias/.rvm/rubies/ruby-1.9.3-p362/include/ruby-1.9.1
arch_hdrdir = /home/matias/.rvm/rubies/ruby-1.9.3-p362/include/ruby-1.9.1/$(arch)
VPATH = $(srcdir):$(arch_hdrdir)/ruby:$(hdrdir)/ruby
prefix = $(DESTDIR)/home/matias/.rvm/rubies/ruby-1.9.3-p362
exec_prefix = $(prefix)
rubylibprefix = $(libdir)/$(RUBY_BASE_NAME)
bindir = $(exec_prefix)/bin
sbindir = $(exec_prefix)/sbin
libexecdir = $(exec_prefix)/libexec
datarootdir = $(prefix)/share
datadir = $(datarootdir)
sysconfdir = $(prefix)/etc
sharedstatedir = $(prefix)/com
localstatedir = $(prefix)/var
includedir = $(prefix)/include
oldincludedir = $(DESTDIR)/usr/include
docdir = $(datarootdir)/doc/$(PACKAGE)
infodir = $(datarootdir)/info
htmldir = $(docdir)
dvidir = $(docdir)
pdfdir = $(docdir)
psdir = $(docdir)
libdir = $(exec_prefix)/lib
localedir = $(datarootdir)/locale
mandir = $(datarootdir)/man
ridir = $(datarootdir)/$(RI_BASE_NAME)
sitedir = $(rubylibprefix)/site_ruby
vendordir = $(rubylibprefix)/vendor_ruby
rubyhdrdir = $(includedir)/$(RUBY_BASE_NAME)-$(ruby_version)
sitehdrdir = $(rubyhdrdir)/site_ruby
vendorhdrdir = $(rubyhdrdir)/vendor_ruby
rubylibdir = $(rubylibprefix)/$(ruby_version)
archdir = $(rubylibdir)/$(arch)
sitelibdir = $(sitedir)/$(ruby_version)
sitearchdir = $(sitelibdir)/$(sitearch)
vendorlibdir = $(vendordir)/$(ruby_version)
vendorarchdir = $(vendorlibdir)/$(sitearch)

NULLCMD = :

CC = gcc
CXX = g++
LIBRUBY = $(LIBRUBY_SO)
LIBRUBY_A = lib$(RUBY_SO_NAME)-static.a
LIBRUBYARG_SHARED = -Wl,-R -Wl,$(libdir) -L$(libdir) -l$(RUBY_SO_NAME)
LIBRUBYARG_STATIC = -Wl,-R -Wl,$(libdir) -L$(libdir) -l$(RUBY_SO_NAME)-static
empty =
OUTFLAG = -o $(empty)
COUTFLAG = -o $(empty)

RUBY_EXTCONF_H = extconf.h
cflags   =  $(optflags) $(debugflags) $(warnflags)
optflags = -O3
debugflags = -ggdb
warnflags = -Wall -Wextra -Wno-unused-parameter -Wno-parentheses -Wno-long-long -Wno-missing-field-initializers -Wpointer-arith -Wwrite-strings -Wdeclaration-after-statement -Wimplicit-function-declaration
CFLAGS   = -fPIC $(cflags)  -fPIC -I$(arch_hdrdir) -I$(hdrdir)/ruby/backward -I$(hdrdir) -I$(srcdir) -I/usr/include/libxml2 -I/usr/local/include $(ARCH_FLAG)
INCFLAGS = -I. -I$(arch_hdrdir) -I$(hdrdir)/ruby/backward -I$(hdrdir) -I$(srcdir) -I/usr/include/libxml2 -I/usr/local/include
DEFS     = -D_FILE_OFFSET_BITS=64
CPPFLAGS = -DRUBY_EXTCONF_H=\"$(RUBY_EXTCONF_H)\"  $(DEFS) $(cppflags) -I/home/matias/.rvm/usr/include
CXXFLAGS = $(CFLAGS) $(cxxflags)
ldflags  = -L.  -rdynamic -Wl,-export-dynamic -L/home/matias/.rvm/usr/lib  -Wl,-R/home/matias/.rvm/usr/lib 
dldflags = -L/home/matias/.rvm/usr/lib  -Wl,-R/home/matias/.rvm/usr/lib 
ARCH_FLAG = 
DLDFLAGS = $(ldflags) $(dldflags) $(ARCH_FLAG)
LDSHARED = $(CC) -shared
LDSHAREDXX = $(CXX) -shared
AR = ar
EXEEXT = 

RUBY_BASE_NAME = ruby
RUBY_INSTALL_NAME = ruby
RUBY_SO_NAME = ruby
arch = i686-linux
sitearch = $(arch)
ruby_version = 1.9.1
ruby = /home/matias/.rvm/rubies/ruby-1.9.3-p362/bin/ruby
RUBY = $(ruby)
RM = rm -f
RM_RF = $(RUBY) -run -e rm -- -rf
RMDIRS = rmdir --ignore-fail-on-non-empty -p
MAKEDIRS = /bin/mkdir -p
INSTALL = /usr/bin/install -c
INSTALL_PROG = $(INSTALL) -m 0755
INSTALL_DATA = $(INSTALL) -m 644
COPY = cp
TOUCH = exit >

#### End of system configuration section. ####

preload = 

libpath = . $(libdir) /home/matias/.rvm/usr/lib /home/matias/.rvm/rubies/ruby-1.9.3-p362/lib
LIBPATH =  -L. -L$(libdir) -Wl,-R$(libdir) -L/home/matias/.rvm/usr/lib -Wl,-R/home/matias/.rvm/usr/lib -L/home/matias/.rvm/rubies/ruby-1.9.3-p362/lib -Wl,-R/home/matias/.rvm/rubies/ruby-1.9.3-p362/lib
DEFFILE = 

CLEANFILES = mkmf.log
DISTCLEANFILES = 
DISTCLEANDIRS = 

extout = 
extout_prefix = 
target_prefix = 
LOCAL_LIBS = 
LIBS = $(LIBRUBYARG_SHARED) -lxml2 -lc -lz -lm -lnsl  -lpthread -lrt -ldl -lcrypt -lm   -lc
SRCS = ruby_xml_xpath_context.c ruby_xml_parser.c ruby_xml_xpath_object.c ruby_xml_namespace.c ruby_xml_html_parser_context.c ruby_xml_schema_type.c ruby_xml_parser_options.c ruby_xml_document.c ruby_xml_cbg.c ruby_xml_reader.c ruby_xml_node.c ruby_xml_xinclude.c ruby_xml_attr.c ruby_xml_dtd.c ruby_xml_html_parser_options.c ruby_xml_error.c ruby_xml_sax_parser.c libxml.c ruby_xml.c ruby_xml_io.c ruby_xml_namespaces.c ruby_xml_attributes.c ruby_xml_schema_attribute.c ruby_xml_html_parser.c ruby_xml_sax2_handler.c ruby_xml_xpath.c ruby_xml_attr_decl.c ruby_xml_relaxng.c ruby_xml_schema_element.c ruby_xml_encoding.c ruby_xml_schema.c ruby_xml_xpointer.c ruby_xml_writer.c ruby_xml_xpath_expression.c ruby_xml_parser_context.c ruby_xml_input_cbg.c ruby_xml_schema_facet.c
OBJS = ruby_xml_xpath_context.o ruby_xml_parser.o ruby_xml_xpath_object.o ruby_xml_namespace.o ruby_xml_html_parser_context.o ruby_xml_schema_type.o ruby_xml_parser_options.o ruby_xml_document.o ruby_xml_cbg.o ruby_xml_reader.o ruby_xml_node.o ruby_xml_xinclude.o ruby_xml_attr.o ruby_xml_dtd.o ruby_xml_html_parser_options.o ruby_xml_error.o ruby_xml_sax_parser.o libxml.o ruby_xml.o ruby_xml_io.o ruby_xml_namespaces.o ruby_xml_attributes.o ruby_xml_schema_attribute.o ruby_xml_html_parser.o ruby_xml_sax2_handler.o ruby_xml_xpath.o ruby_xml_attr_decl.o ruby_xml_relaxng.o ruby_xml_schema_element.o ruby_xml_encoding.o ruby_xml_schema.o ruby_xml_xpointer.o ruby_xml_writer.o ruby_xml_xpath_expression.o ruby_xml_parser_context.o ruby_xml_input_cbg.o ruby_xml_schema_facet.o
TARGET = libxml_ruby
DLLIB = $(TARGET).so
EXTSTATIC = 
STATIC_LIB = 

BINDIR        = $(bindir)
RUBYCOMMONDIR = $(sitedir)$(target_prefix)
RUBYLIBDIR = /home/matias/.rvm/gems/ruby-1.9.3-p362@sampleGemset/gems/libxml-ruby-2.6.0/lib$(target_prefix)
RUBYARCHDIR = /home/matias/.rvm/gems/ruby-1.9.3-p362@sampleGemset/gems/libxml-ruby-2.6.0/lib$(target_prefix)
HDRDIR        = $(rubyhdrdir)/ruby$(target_prefix)
ARCHHDRDIR    = $(rubyhdrdir)/$(arch)/ruby$(target_prefix)

TARGET_SO     = $(DLLIB)
CLEANLIBS     = $(TARGET).so 
CLEANOBJS     = *.o  *.bak

all:    $(DLLIB)
static: $(STATIC_LIB)
.PHONY: all install static install-so install-rb
.PHONY: clean clean-so clean-rb

clean-rb-default::
clean-rb::
clean-so::
clean: clean-so clean-static clean-rb-default clean-rb
		-$(Q)$(RM) $(CLEANLIBS) $(CLEANOBJS) $(CLEANFILES) .*.time

distclean-rb-default::
distclean-rb::
distclean-so::
distclean: clean distclean-so distclean-rb-default distclean-rb
		@-$(RM) Makefile $(RUBY_EXTCONF_H) conftest.* mkmf.log
		@-$(RM) core ruby$(EXEEXT) *~ $(DISTCLEANFILES)
		@-$(RMDIRS) $(DISTCLEANDIRS) 2> /dev/null || true

realclean: distclean
install: install-so install-rb

install-so: $(RUBYARCHDIR)/$(DLLIB)
$(RUBYARCHDIR)/$(DLLIB): $(DLLIB)
	-$(Q)$(MAKEDIRS) $(@D)
	$(INSTALL_PROG) $(DLLIB) $(@D)
clean-static::
	-$(Q)$(RM) $(STATIC_LIB)
install-rb: pre-install-rb install-rb-default
install-rb-default: pre-install-rb-default
pre-install-rb: Makefile
pre-install-rb-default: Makefile
pre-install-rb-default:
	$(ECHO) installing default libxml_ruby libraries
./.RUBYARCHDIR.time:
	$(Q) $(MAKEDIRS) $(RUBYARCHDIR)
	$(Q) $(TOUCH) $@

site-install: site-install-so site-install-rb
site-install-so: install-so
site-install-rb: install-rb

.SUFFIXES: .c .m .cc .mm .cxx .cpp .C .o

.cc.o:
	$(ECHO) compiling $(<)
	$(Q) $(CXX) $(INCFLAGS) $(CPPFLAGS) $(CXXFLAGS) $(COUTFLAG)$@ -c $<

.mm.o:
	$(ECHO) compiling $(<)
	$(Q) $(CXX) $(INCFLAGS) $(CPPFLAGS) $(CXXFLAGS) $(COUTFLAG)$@ -c $<

.cxx.o:
	$(ECHO) compiling $(<)
	$(Q) $(CXX) $(INCFLAGS) $(CPPFLAGS) $(CXXFLAGS) $(COUTFLAG)$@ -c $<

.cpp.o:
	$(ECHO) compiling $(<)
	$(Q) $(CXX) $(INCFLAGS) $(CPPFLAGS) $(CXXFLAGS) $(COUTFLAG)$@ -c $<

.C.o:
	$(ECHO) compiling $(<)
	$(Q) $(CXX) $(INCFLAGS) $(CPPFLAGS) $(CXXFLAGS) $(COUTFLAG)$@ -c $<

.c.o:
	$(ECHO) compiling $(<)
	$(Q) $(CC) $(INCFLAGS) $(CPPFLAGS) $(CFLAGS) $(COUTFLAG)$@ -c $<

.m.o:
	$(ECHO) compiling $(<)
	$(Q) $(CC) $(INCFLAGS) $(CPPFLAGS) $(CFLAGS) $(COUTFLAG)$@ -c $<

$(DLLIB): $(OBJS) Makefile
	$(ECHO) linking shared-object $(DLLIB)
	-$(Q)$(RM) $(@)
	$(Q) $(LDSHARED) -o $@ $(OBJS) $(LIBPATH) $(DLDFLAGS) $(LOCAL_LIBS) $(LIBS)



$(OBJS): $(hdrdir)/ruby.h $(hdrdir)/ruby/defines.h $(arch_hdrdir)/ruby/config.h $(RUBY_EXTCONF_H)
