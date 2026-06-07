# Loaded via RUBYOPT (see Makefile) only when building this project locally.
#
# This machine's Ruby records CXX="false", so mkmf bakes a no-op C++ compiler
# into every native gem's Makefile and C++ gems (eventmachine) fail to build.
# Overriding RbConfig here makes mkmf emit our clang++ wrapper instead. This is
# in-process and project-scoped: it changes nothing on disk in the Ruby install.
require 'rbconfig'
cxx = File.join(__dir__, 'cxx')
RbConfig::CONFIG['CXX'] = cxx
RbConfig::MAKEFILE_CONFIG['CXX'] = cxx
