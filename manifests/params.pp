# Class: gcc::params
#
# This class manages parameters for the gcc module
#
# Parameters:
#
# Actions:
#
# Requires:
#
# Sample Usage:
#
class gcc::params{

  case $operatingsystem {
    'fedora', 'centos', 'redhat': {
      if $operatingsystemrelease >= '6.0'{
        $gcc_package = [ 'gcc', 'gcc-c++', 'make' ]
      else {
        $gcc_package = 'gcc'
      }
    }
    'ubuntu', 'debian': {
      $gcc_package = [ 'gcc', 'build-essential' ]
    }
  }

}
