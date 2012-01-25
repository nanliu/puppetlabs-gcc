# Class: gcc
#
# This class installs gcc
#
# Parameters:
#
# Actions:
#   - Install the gcc package
#
# Requires:
#
# Sample Usage:
#
class gcc (
  $package_name   = hiera('gcc_package_name'),
  $package_ensure = hiera('gcc_package_ensure', 'installed')
) {

  package { $package_name:
    ensure => $package_ensure,
  }

}
