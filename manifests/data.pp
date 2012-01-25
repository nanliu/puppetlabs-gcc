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
class gcc::data {

  case $::osfamily {
    'redhat': {
      if versioncmp ($::operatingsystemrelease, '6.0') >= 0 {
        $gcc_package_name = [ 'gcc', 'gcc-c++', 'make' ]
      } else {
        $gcc_package_name = 'gcc'
      }
    }
    'ubuntu': {
      $gcc_package_name = [ 'gcc', 'build-essential' ]
    }
  }

}
