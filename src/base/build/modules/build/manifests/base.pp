class build::base {
  require build::base::packages

  file { '/etc/bash.bashrc':
    ensure => present,
    source => 'puppet:///modules/build/etc/bash.bashrc',
    mode => "644"
  }
}
