class clean {

  bash_exec { 'apt-get --purge -y remove python3.7 python3.7-minimal git-man geoip-database': }

  bash_exec { 'apt-get remove -y build-essential autoconf automake':
    require => Bash_exec[ 'apt-get --purge -y remove python3.7 python3.7-minimal git-man geoip-database' ]
  }

  bash_exec { 'apt -y autoremove':
    require => Bash_exec[ 'apt-get remove -y build-essential autoconf automake' ]
  }

  bash_exec { 'apt-get clean':
    require => Bash_exec[ 'apt -y autoremove' ]
  }

  bash_exec { 'rm -rf /tmp/*': }

  bash_exec { 'rm -rf /var/lib/apt/lists/*': }
}
