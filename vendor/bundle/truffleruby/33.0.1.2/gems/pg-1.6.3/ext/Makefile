
SHELL = /bin/sh

# V=0 quiet, V=1 verbose.  other values don't work.
V = 0
V0 = $(V:0=)
Q1 = $(V:1=)
Q = $(Q1:0=@)
ECHO1 = $(V:1=@ :)
ECHO = $(ECHO1:0=@ echo)
NULLCMD = :

#### Start of system configuration section. ####

srcdir = .
topdir = /home/runner/.rubies/truffleruby-33.0.1/lib/cext/include
hdrdir = $(topdir)
arch_hdrdir = /home/runner/.rubies/truffleruby-33.0.1/lib/cext/include
PATH_SEPARATOR = :
VPATH = $(srcdir):$(arch_hdrdir)/ruby:$(hdrdir)/ruby
prefix = $(DESTDIR)/home/runner/.rubies/truffleruby-33.0.1
exec_prefix = $(prefix)
rubylibprefix = $(libdir)/$(RUBY_BASE_NAME)
includedir = $(DESTDIR)/home/runner/.rubies/truffleruby-33.0.1/lib/cext
rubyarchhdrdir = $(DESTDIR)/home/runner/.rubies/truffleruby-33.0.1/lib/cext/include
rubyhdrdir = $(DESTDIR)/home/runner/.rubies/truffleruby-33.0.1/lib/cext/include
sysconfdir = $(DESTDIR)/home/runner/.rubies/truffleruby-33.0.1/etc
bindir = $(exec_prefix)/bin
libdir = $(exec_prefix)/lib
rubylibdir = $(libdir)/mri
rubyarchdir = $(rubylibdir)
archdir = $(rubyarchdir)
archincludedir = $(includedir)/$(arch)
sitedir = $(rubylibprefix)/site_ruby
sitehdrdir = $(rubyhdrdir)/site_ruby
sitelibdir = $(sitedir)/$(ruby_version)
sitearchdir = $(sitelibdir)/$(sitearch)
datarootdir = $(prefix)/share
datadir = $(datarootdir)
mandir = $(datarootdir)/man
ridir = $(datarootdir)/ri
vendordir = $(rubylibprefix)/vendor_ruby


CC_WRAPPER = 
CC = gcc
CXX = g++
LIBRUBY = cext/libtruffleruby.so
LIBRUBY_A = 
LIBRUBYARG_SHARED = 
LIBRUBYARG_STATIC = 
empty =
OUTFLAG = -o $(empty)
COUTFLAG = -o $(empty)
CSRCFLAG = $(empty)

RUBY_EXTCONF_H = extconf.h
cflags   = $(optflags) $(debugflags) $(warnflags)
cxxflags = $(optflags) $(debugflags)
optflags = -O3 -fno-fast-math
debugflags = -ggdb3
warnflags = -Werror=implicit-function-declaration -Wno-int-conversion -Wno-int-to-pointer-cast -Wno-incompatible-pointer-types -Wno-format-extra-args
cppflags = 
CCDLFLAGS = -fPIC
CFLAGS   = $(CCDLFLAGS) $(cflags) $(ARCH_FLAG)
INCFLAGS = -I. -I$(arch_hdrdir) -I$(hdrdir)/ruby/backward -I$(hdrdir) -I$(srcdir)
DEFS     = 
CPPFLAGS = -DRUBY_EXTCONF_H=\"$(RUBY_EXTCONF_H)\" -I/usr/include/postgresql  $(DEFS) $(cppflags)
CXXFLAGS = $(CCDLFLAGS) $(cxxflags) $(ARCH_FLAG)
ldflags  = 
dldflags = -Wl,-z,lazy 
ARCH_FLAG = 
DLDFLAGS = $(ldflags) $(dldflags) $(ARCH_FLAG)
LDSHARED = $(CC) -shared
LDSHAREDXX = $(CXX) -shared
AR = gcc-ar
EXEEXT = 

RUBY_BASE_NAME = ruby
RUBY_INSTALL_NAME = truffleruby
RUBYW_INSTALL_NAME = 
RUBY_SO_NAME = ruby

arch = x86_64-linux
sitearch = $(arch)
ruby_version = 33.0.1.2
ruby = $(bindir)/ruby
RUBY = $(ruby)
BUILTRUBY = $(bindir)/truffleruby
ruby_headers = $(hdrdir)/ruby.h $(hdrdir)/ruby/backward.h $(hdrdir)/ruby/ruby.h $(hdrdir)/ruby/defines.h $(hdrdir)/ruby/missing.h $(hdrdir)/ruby/intern.h $(hdrdir)/ruby/st.h $(hdrdir)/ruby/subst.h $(arch_hdrdir)/ruby/config.h $(RUBY_EXTCONF_H)

RM = rm -f
RM_RF = rm -fr
RMDIRS = rmdir --ignore-fail-on-non-empty -p
MAKEDIRS = mkdir -p
INSTALL = /usr/bin/install -c
INSTALL_PROG = $(INSTALL) -m 0755
INSTALL_DATA = $(INSTALL) -m 0644
COPY = cp
TOUCH = exit >

#### End of system configuration section. ####

preload = 
libpath = . /usr/lib/x86_64-linux-gnu
LIBPATH =  -L. -L/usr/lib/x86_64-linux-gnu -Wl,-rpath,/usr/lib/x86_64-linux-gnu
DEFFILE = 

CLEANFILES = mkmf.log
DISTCLEANFILES = 
DISTCLEANDIRS = 

extout = 
extout_prefix = 
target_prefix = 
LOCAL_LIBS = 
LIBS =  -lpq   
ORIG_SRCS = gvl_wrappers.c pg.c pg_binary_decoder.c pg_binary_encoder.c pg_cancel_connection.c pg_coder.c pg_connection.c pg_copy_coder.c pg_errors.c pg_record_coder.c pg_result.c pg_text_decoder.c pg_text_encoder.c pg_tuple.c pg_type_map.c pg_type_map_all_strings.c pg_type_map_by_class.c pg_type_map_by_column.c pg_type_map_by_mri_type.c pg_type_map_by_oid.c pg_type_map_in_ruby.c pg_util.c
SRCS = $(ORIG_SRCS) 
OBJS = gvl_wrappers.o pg.o pg_binary_decoder.o pg_binary_encoder.o pg_cancel_connection.o pg_coder.o pg_connection.o pg_copy_coder.o pg_errors.o pg_record_coder.o pg_result.o pg_text_decoder.o pg_text_encoder.o pg_tuple.o pg_type_map.o pg_type_map_all_strings.o pg_type_map_by_class.o pg_type_map_by_column.o pg_type_map_by_mri_type.o pg_type_map_by_oid.o pg_type_map_in_ruby.o pg_util.o
HDRS = $(srcdir)/extconf.h $(srcdir)/gvl_wrappers.h $(srcdir)/pg.h $(srcdir)/pg_util.h
LOCAL_HDRS = 
TARGET = pg_ext
TARGET_NAME = pg_ext
TARGET_ENTRY = Init_$(TARGET_NAME)
DLLIB = $(TARGET).so
EXTSTATIC = 
STATIC_LIB = 

TIMESTAMP_DIR = .
BINDIR        = $(bindir)
RUBYCOMMONDIR = $(sitedir)$(target_prefix)
RUBYLIBDIR    = $(sitelibdir)$(target_prefix)
RUBYARCHDIR   = $(sitearchdir)$(target_prefix)
HDRDIR        = $(sitehdrdir)$(target_prefix)
ARCHHDRDIR    = $(sitearchhdrdir)$(target_prefix)
TARGET_SO_DIR =
TARGET_SO     = $(TARGET_SO_DIR)$(DLLIB)
CLEANLIBS     = $(TARGET_SO) 
CLEANOBJS     = $(OBJS) *.bak
TARGET_SO_DIR_TIMESTAMP = $(TIMESTAMP_DIR)/.sitearchdir.time

all:    $(DLLIB)
static: $(STATIC_LIB)
.PHONY: all install static install-so install-rb
.PHONY: clean clean-so clean-static clean-rb

clean-static::
clean-rb-default::
clean-rb::
clean-so::
clean: clean-so clean-static clean-rb-default clean-rb
		-$(Q)$(RM_RF) $(CLEANLIBS) $(CLEANOBJS) $(CLEANFILES) .*.time

distclean-rb-default::
distclean-rb::
distclean-so::
distclean-static::
distclean: clean distclean-so distclean-static distclean-rb-default distclean-rb
		-$(Q)$(RM) Makefile $(RUBY_EXTCONF_H) conftest.* mkmf.log
		-$(Q)$(RM) core ruby$(EXEEXT) *~ $(DISTCLEANFILES)
		-$(Q)$(RMDIRS) $(DISTCLEANDIRS) 2> /dev/null || true

realclean: distclean
install: install-so install-rb

install-so: $(DLLIB) $(TARGET_SO_DIR_TIMESTAMP)
	$(INSTALL_PROG) $(DLLIB) $(RUBYARCHDIR)
clean-static::
	-$(Q)$(RM) $(STATIC_LIB)
install-rb: pre-install-rb do-install-rb install-rb-default
install-rb-default: pre-install-rb-default do-install-rb-default
pre-install-rb: Makefile
pre-install-rb-default: Makefile
do-install-rb:
do-install-rb-default:
pre-install-rb-default:
	@$(NULLCMD)
pre-install-rb: $(TIMESTAMP_DIR)/.sitelibdir.-.pg.time
do-install-rb: $(RUBYLIBDIR)/pg//postgresql_lib_path.rb
$(RUBYLIBDIR)/pg//postgresql_lib_path.rb: postgresql_lib_path.rb $(TIMESTAMP_DIR)/.sitelibdir.-.pg.time
	$(Q) $(INSTALL_DATA) postgresql_lib_path.rb $(@D)
pre-install-rb:
	$(Q1:0=@$(MAKE) -q do-install-rb || )$(ECHO1:0=echo) installing pg_ext libraries
$(TARGET_SO_DIR_TIMESTAMP):
	$(Q) $(MAKEDIRS) $(@D) $(RUBYARCHDIR)
	$(Q) $(TOUCH) $@
$(TIMESTAMP_DIR)/.sitelibdir.-.pg.time:
	$(Q) $(MAKEDIRS) $(@D) $(RUBYLIBDIR)/pg/
	$(Q) $(TOUCH) $@

site-install: site-install-so site-install-rb
site-install-so: install-so
site-install-rb: install-rb

.SUFFIXES: .c .m .cc .mm .cxx .cpp .o .S

.cc.o:
	$(ECHO) compiling $(<)
	$(Q) $(if\
  $(or\
    $(and\
      $(findstring json/ext/parser, $(realpath $(<))),\
      $(or\
        $(findstring parser.c, $(<)),\
      )\
    ),\
    $(and\
      $(findstring ruby-oci8/ext/oci8, $(realpath $(<))),\
      $(or\
        $(findstring ocinumber.c, $(<)),\
      )\
    ),\
    $(and\
      $(findstring /pg, $(realpath $(<))),\
      $(or\
        $(findstring pg_result.c, $(<)),\
        $(findstring pg_tuple.c, $(<)),\
        $(findstring pg_text_decoder.c, $(<)),\
        $(findstring pg_text_encoder.c, $(<)),\
      )\
    ),\
    $(and\
      $(findstring ext/tk/tkutil, $(realpath $(<))),\
      $(or\
        $(findstring tkutil.c, $(<)),\
      )\
    ),\
  ),\
  /home/runner/.rubies/truffleruby-33.0.1/bin/ruby /home/runner/.rubies/truffleruby-33.0.1/lib/cext/preprocess.rb $< $(INCFLAGS) $(CPPFLAGS) $(CXXFLAGS) $(COUTFLAG)$@ -c | $(CXX) -I$(<D) $(INCFLAGS) $(CPPFLAGS) $(CXXFLAGS) $(COUTFLAG)$@ -c -xc++ -,\
  $(CXX) $(INCFLAGS) $(CPPFLAGS) $(CXXFLAGS) $(COUTFLAG)$@ -c $(CSRCFLAG)$<\
)


.cc.S:
	$(ECHO) translating $(<)
	$(Q) $(if\
  $(or\
    $(and\
      $(findstring json/ext/parser, $(realpath $(<))),\
      $(or\
        $(findstring parser.c, $(<)),\
      )\
    ),\
    $(and\
      $(findstring ruby-oci8/ext/oci8, $(realpath $(<))),\
      $(or\
        $(findstring ocinumber.c, $(<)),\
      )\
    ),\
    $(and\
      $(findstring /pg, $(realpath $(<))),\
      $(or\
        $(findstring pg_result.c, $(<)),\
        $(findstring pg_tuple.c, $(<)),\
        $(findstring pg_text_decoder.c, $(<)),\
        $(findstring pg_text_encoder.c, $(<)),\
      )\
    ),\
    $(and\
      $(findstring ext/tk/tkutil, $(realpath $(<))),\
      $(or\
        $(findstring tkutil.c, $(<)),\
      )\
    ),\
  ),\
  /home/runner/.rubies/truffleruby-33.0.1/bin/ruby /home/runner/.rubies/truffleruby-33.0.1/lib/cext/preprocess.rb $< $(INCFLAGS) $(CPPFLAGS) $(CXXFLAGS) $(COUTFLAG)$@ -S | $(CXX) -I$(<D) $(INCFLAGS) $(CPPFLAGS) $(CXXFLAGS) $(COUTFLAG)$@ -c -xc++ -,\
  $(CXX) $(INCFLAGS) $(CPPFLAGS) $(CXXFLAGS) $(COUTFLAG)$@ -c $(CSRCFLAG)$<\
)


.mm.o:
	$(ECHO) compiling $(<)
	$(Q) $(if\
  $(or\
    $(and\
      $(findstring json/ext/parser, $(realpath $(<))),\
      $(or\
        $(findstring parser.c, $(<)),\
      )\
    ),\
    $(and\
      $(findstring ruby-oci8/ext/oci8, $(realpath $(<))),\
      $(or\
        $(findstring ocinumber.c, $(<)),\
      )\
    ),\
    $(and\
      $(findstring /pg, $(realpath $(<))),\
      $(or\
        $(findstring pg_result.c, $(<)),\
        $(findstring pg_tuple.c, $(<)),\
        $(findstring pg_text_decoder.c, $(<)),\
        $(findstring pg_text_encoder.c, $(<)),\
      )\
    ),\
    $(and\
      $(findstring ext/tk/tkutil, $(realpath $(<))),\
      $(or\
        $(findstring tkutil.c, $(<)),\
      )\
    ),\
  ),\
  /home/runner/.rubies/truffleruby-33.0.1/bin/ruby /home/runner/.rubies/truffleruby-33.0.1/lib/cext/preprocess.rb $< $(INCFLAGS) $(CPPFLAGS) $(CXXFLAGS) $(COUTFLAG)$@ -c | $(CXX) -I$(<D) $(INCFLAGS) $(CPPFLAGS) $(CXXFLAGS) $(COUTFLAG)$@ -c -xc++ -,\
  $(CXX) $(INCFLAGS) $(CPPFLAGS) $(CXXFLAGS) $(COUTFLAG)$@ -c $(CSRCFLAG)$<\
)


.mm.S:
	$(ECHO) translating $(<)
	$(Q) $(if\
  $(or\
    $(and\
      $(findstring json/ext/parser, $(realpath $(<))),\
      $(or\
        $(findstring parser.c, $(<)),\
      )\
    ),\
    $(and\
      $(findstring ruby-oci8/ext/oci8, $(realpath $(<))),\
      $(or\
        $(findstring ocinumber.c, $(<)),\
      )\
    ),\
    $(and\
      $(findstring /pg, $(realpath $(<))),\
      $(or\
        $(findstring pg_result.c, $(<)),\
        $(findstring pg_tuple.c, $(<)),\
        $(findstring pg_text_decoder.c, $(<)),\
        $(findstring pg_text_encoder.c, $(<)),\
      )\
    ),\
    $(and\
      $(findstring ext/tk/tkutil, $(realpath $(<))),\
      $(or\
        $(findstring tkutil.c, $(<)),\
      )\
    ),\
  ),\
  /home/runner/.rubies/truffleruby-33.0.1/bin/ruby /home/runner/.rubies/truffleruby-33.0.1/lib/cext/preprocess.rb $< $(INCFLAGS) $(CPPFLAGS) $(CXXFLAGS) $(COUTFLAG)$@ -S | $(CXX) -I$(<D) $(INCFLAGS) $(CPPFLAGS) $(CXXFLAGS) $(COUTFLAG)$@ -c -xc++ -,\
  $(CXX) $(INCFLAGS) $(CPPFLAGS) $(CXXFLAGS) $(COUTFLAG)$@ -c $(CSRCFLAG)$<\
)


.cxx.o:
	$(ECHO) compiling $(<)
	$(Q) $(if\
  $(or\
    $(and\
      $(findstring json/ext/parser, $(realpath $(<))),\
      $(or\
        $(findstring parser.c, $(<)),\
      )\
    ),\
    $(and\
      $(findstring ruby-oci8/ext/oci8, $(realpath $(<))),\
      $(or\
        $(findstring ocinumber.c, $(<)),\
      )\
    ),\
    $(and\
      $(findstring /pg, $(realpath $(<))),\
      $(or\
        $(findstring pg_result.c, $(<)),\
        $(findstring pg_tuple.c, $(<)),\
        $(findstring pg_text_decoder.c, $(<)),\
        $(findstring pg_text_encoder.c, $(<)),\
      )\
    ),\
    $(and\
      $(findstring ext/tk/tkutil, $(realpath $(<))),\
      $(or\
        $(findstring tkutil.c, $(<)),\
      )\
    ),\
  ),\
  /home/runner/.rubies/truffleruby-33.0.1/bin/ruby /home/runner/.rubies/truffleruby-33.0.1/lib/cext/preprocess.rb $< $(INCFLAGS) $(CPPFLAGS) $(CXXFLAGS) $(COUTFLAG)$@ -c | $(CXX) -I$(<D) $(INCFLAGS) $(CPPFLAGS) $(CXXFLAGS) $(COUTFLAG)$@ -c -xc++ -,\
  $(CXX) $(INCFLAGS) $(CPPFLAGS) $(CXXFLAGS) $(COUTFLAG)$@ -c $(CSRCFLAG)$<\
)


.cxx.S:
	$(ECHO) translating $(<)
	$(Q) $(if\
  $(or\
    $(and\
      $(findstring json/ext/parser, $(realpath $(<))),\
      $(or\
        $(findstring parser.c, $(<)),\
      )\
    ),\
    $(and\
      $(findstring ruby-oci8/ext/oci8, $(realpath $(<))),\
      $(or\
        $(findstring ocinumber.c, $(<)),\
      )\
    ),\
    $(and\
      $(findstring /pg, $(realpath $(<))),\
      $(or\
        $(findstring pg_result.c, $(<)),\
        $(findstring pg_tuple.c, $(<)),\
        $(findstring pg_text_decoder.c, $(<)),\
        $(findstring pg_text_encoder.c, $(<)),\
      )\
    ),\
    $(and\
      $(findstring ext/tk/tkutil, $(realpath $(<))),\
      $(or\
        $(findstring tkutil.c, $(<)),\
      )\
    ),\
  ),\
  /home/runner/.rubies/truffleruby-33.0.1/bin/ruby /home/runner/.rubies/truffleruby-33.0.1/lib/cext/preprocess.rb $< $(INCFLAGS) $(CPPFLAGS) $(CXXFLAGS) $(COUTFLAG)$@ -S | $(CXX) -I$(<D) $(INCFLAGS) $(CPPFLAGS) $(CXXFLAGS) $(COUTFLAG)$@ -c -xc++ -,\
  $(CXX) $(INCFLAGS) $(CPPFLAGS) $(CXXFLAGS) $(COUTFLAG)$@ -c $(CSRCFLAG)$<\
)


.cpp.o:
	$(ECHO) compiling $(<)
	$(Q) $(if\
  $(or\
    $(and\
      $(findstring json/ext/parser, $(realpath $(<))),\
      $(or\
        $(findstring parser.c, $(<)),\
      )\
    ),\
    $(and\
      $(findstring ruby-oci8/ext/oci8, $(realpath $(<))),\
      $(or\
        $(findstring ocinumber.c, $(<)),\
      )\
    ),\
    $(and\
      $(findstring /pg, $(realpath $(<))),\
      $(or\
        $(findstring pg_result.c, $(<)),\
        $(findstring pg_tuple.c, $(<)),\
        $(findstring pg_text_decoder.c, $(<)),\
        $(findstring pg_text_encoder.c, $(<)),\
      )\
    ),\
    $(and\
      $(findstring ext/tk/tkutil, $(realpath $(<))),\
      $(or\
        $(findstring tkutil.c, $(<)),\
      )\
    ),\
  ),\
  /home/runner/.rubies/truffleruby-33.0.1/bin/ruby /home/runner/.rubies/truffleruby-33.0.1/lib/cext/preprocess.rb $< $(INCFLAGS) $(CPPFLAGS) $(CXXFLAGS) $(COUTFLAG)$@ -c | $(CXX) -I$(<D) $(INCFLAGS) $(CPPFLAGS) $(CXXFLAGS) $(COUTFLAG)$@ -c -xc++ -,\
  $(CXX) $(INCFLAGS) $(CPPFLAGS) $(CXXFLAGS) $(COUTFLAG)$@ -c $(CSRCFLAG)$<\
)


.cpp.S:
	$(ECHO) translating $(<)
	$(Q) $(if\
  $(or\
    $(and\
      $(findstring json/ext/parser, $(realpath $(<))),\
      $(or\
        $(findstring parser.c, $(<)),\
      )\
    ),\
    $(and\
      $(findstring ruby-oci8/ext/oci8, $(realpath $(<))),\
      $(or\
        $(findstring ocinumber.c, $(<)),\
      )\
    ),\
    $(and\
      $(findstring /pg, $(realpath $(<))),\
      $(or\
        $(findstring pg_result.c, $(<)),\
        $(findstring pg_tuple.c, $(<)),\
        $(findstring pg_text_decoder.c, $(<)),\
        $(findstring pg_text_encoder.c, $(<)),\
      )\
    ),\
    $(and\
      $(findstring ext/tk/tkutil, $(realpath $(<))),\
      $(or\
        $(findstring tkutil.c, $(<)),\
      )\
    ),\
  ),\
  /home/runner/.rubies/truffleruby-33.0.1/bin/ruby /home/runner/.rubies/truffleruby-33.0.1/lib/cext/preprocess.rb $< $(INCFLAGS) $(CPPFLAGS) $(CXXFLAGS) $(COUTFLAG)$@ -S | $(CXX) -I$(<D) $(INCFLAGS) $(CPPFLAGS) $(CXXFLAGS) $(COUTFLAG)$@ -c -xc++ -,\
  $(CXX) $(INCFLAGS) $(CPPFLAGS) $(CXXFLAGS) $(COUTFLAG)$@ -c $(CSRCFLAG)$<\
)


.c.o:
	$(ECHO) compiling $(<)
	$(Q) $(if\
  $(or\
    $(and\
      $(findstring json/ext/parser, $(realpath $(<))),\
      $(or\
        $(findstring parser.c, $(<)),\
      )\
    ),\
    $(and\
      $(findstring ruby-oci8/ext/oci8, $(realpath $(<))),\
      $(or\
        $(findstring ocinumber.c, $(<)),\
      )\
    ),\
    $(and\
      $(findstring /pg, $(realpath $(<))),\
      $(or\
        $(findstring pg_result.c, $(<)),\
        $(findstring pg_tuple.c, $(<)),\
        $(findstring pg_text_decoder.c, $(<)),\
        $(findstring pg_text_encoder.c, $(<)),\
      )\
    ),\
    $(and\
      $(findstring ext/tk/tkutil, $(realpath $(<))),\
      $(or\
        $(findstring tkutil.c, $(<)),\
      )\
    ),\
  ),\
  /home/runner/.rubies/truffleruby-33.0.1/bin/ruby /home/runner/.rubies/truffleruby-33.0.1/lib/cext/preprocess.rb $< $(INCFLAGS) $(CPPFLAGS) $(CFLAGS) $(COUTFLAG)$@ -c | $(CC) -I$(<D) $(INCFLAGS) $(CPPFLAGS) $(CFLAGS) $(COUTFLAG)$@ -c -xc -,\
  $(CC) $(INCFLAGS) $(CPPFLAGS) $(CFLAGS) $(COUTFLAG)$@ -c $(CSRCFLAG)$<\
)


.c.S:
	$(ECHO) translating $(<)
	$(Q) $(if\
  $(or\
    $(and\
      $(findstring json/ext/parser, $(realpath $(<))),\
      $(or\
        $(findstring parser.c, $(<)),\
      )\
    ),\
    $(and\
      $(findstring ruby-oci8/ext/oci8, $(realpath $(<))),\
      $(or\
        $(findstring ocinumber.c, $(<)),\
      )\
    ),\
    $(and\
      $(findstring /pg, $(realpath $(<))),\
      $(or\
        $(findstring pg_result.c, $(<)),\
        $(findstring pg_tuple.c, $(<)),\
        $(findstring pg_text_decoder.c, $(<)),\
        $(findstring pg_text_encoder.c, $(<)),\
      )\
    ),\
    $(and\
      $(findstring ext/tk/tkutil, $(realpath $(<))),\
      $(or\
        $(findstring tkutil.c, $(<)),\
      )\
    ),\
  ),\
  /home/runner/.rubies/truffleruby-33.0.1/bin/ruby /home/runner/.rubies/truffleruby-33.0.1/lib/cext/preprocess.rb $< $(INCFLAGS) $(CPPFLAGS) $(CFLAGS) $(COUTFLAG)$@ -S | $(CC) -I$(<D) $(INCFLAGS) $(CPPFLAGS) $(CFLAGS) $(COUTFLAG)$@ -c -xc -,\
  $(CC) $(INCFLAGS) $(CPPFLAGS) $(CFLAGS) $(COUTFLAG)$@ -c $(CSRCFLAG)$<\
)


.m.o:
	$(ECHO) compiling $(<)
	$(Q) $(if\
  $(or\
    $(and\
      $(findstring json/ext/parser, $(realpath $(<))),\
      $(or\
        $(findstring parser.c, $(<)),\
      )\
    ),\
    $(and\
      $(findstring ruby-oci8/ext/oci8, $(realpath $(<))),\
      $(or\
        $(findstring ocinumber.c, $(<)),\
      )\
    ),\
    $(and\
      $(findstring /pg, $(realpath $(<))),\
      $(or\
        $(findstring pg_result.c, $(<)),\
        $(findstring pg_tuple.c, $(<)),\
        $(findstring pg_text_decoder.c, $(<)),\
        $(findstring pg_text_encoder.c, $(<)),\
      )\
    ),\
    $(and\
      $(findstring ext/tk/tkutil, $(realpath $(<))),\
      $(or\
        $(findstring tkutil.c, $(<)),\
      )\
    ),\
  ),\
  /home/runner/.rubies/truffleruby-33.0.1/bin/ruby /home/runner/.rubies/truffleruby-33.0.1/lib/cext/preprocess.rb $< $(INCFLAGS) $(CPPFLAGS) $(CFLAGS) $(COUTFLAG)$@ -c | $(CC) -I$(<D) $(INCFLAGS) $(CPPFLAGS) $(CFLAGS) $(COUTFLAG)$@ -c -xc -,\
  $(CC) $(INCFLAGS) $(CPPFLAGS) $(CFLAGS) $(COUTFLAG)$@ -c $(CSRCFLAG)$<\
)


.m.S:
	$(ECHO) translating $(<)
	$(Q) $(if\
  $(or\
    $(and\
      $(findstring json/ext/parser, $(realpath $(<))),\
      $(or\
        $(findstring parser.c, $(<)),\
      )\
    ),\
    $(and\
      $(findstring ruby-oci8/ext/oci8, $(realpath $(<))),\
      $(or\
        $(findstring ocinumber.c, $(<)),\
      )\
    ),\
    $(and\
      $(findstring /pg, $(realpath $(<))),\
      $(or\
        $(findstring pg_result.c, $(<)),\
        $(findstring pg_tuple.c, $(<)),\
        $(findstring pg_text_decoder.c, $(<)),\
        $(findstring pg_text_encoder.c, $(<)),\
      )\
    ),\
    $(and\
      $(findstring ext/tk/tkutil, $(realpath $(<))),\
      $(or\
        $(findstring tkutil.c, $(<)),\
      )\
    ),\
  ),\
  /home/runner/.rubies/truffleruby-33.0.1/bin/ruby /home/runner/.rubies/truffleruby-33.0.1/lib/cext/preprocess.rb $< $(INCFLAGS) $(CPPFLAGS) $(CFLAGS) $(COUTFLAG)$@ -S | $(CC) -I$(<D) $(INCFLAGS) $(CPPFLAGS) $(CFLAGS) $(COUTFLAG)$@ -c -xc -,\
  $(CC) $(INCFLAGS) $(CPPFLAGS) $(CFLAGS) $(COUTFLAG)$@ -c $(CSRCFLAG)$<\
)


$(TARGET_SO): $(OBJS) Makefile
	$(ECHO) linking shared-object $(DLLIB)
	-$(Q)$(RM) $(@)
	$(Q) $(LDSHARED) -o $@ $(OBJS) $(LIBPATH) $(DLDFLAGS) $(LOCAL_LIBS) $(LIBS)



$(OBJS): $(HDRS) $(ruby_headers) Makefile
