# ------------ Preinstall Stage ------------- #

stage { 'preinstall':
	before => Stage['main']
}


# Define the apt_get_update class
class apt_get_update {
	exec { 'apt-get -y update':
		path => {'/usr/sbin', '/usr/bin', '/sbin', '/bin'}
	}
}

# Declare (invoke) the apt_get_update
class {'apt_get_update':
	stage => preinstall
}

# ----- NodeJS ------ #

class { 'nodejs':
	version => 'stable'
}

package { 'express':
	ensure => present,
	provider => 'npm',
	install_opt => '--save',
}

package { 'ejs':
	ensure => present,
	provider => 'npm',
	install_opt => '--save',
}

package { 'async':
	ensure => present,
	provider => 'npm',
	install_opt => '--save',
}

package { 'underscore':
	ensure => present,
	provider => 'npm',
	install_opt => '--save',
}

package { 'moment':
	ensure => present,
	provider => 'npm',
	install_opt => '--save',
}

package { 'mongoose':
	ensure => present,
	provider => 'npm',
	install_opt => '--save',
}

package { 'nodemon':
	ensure => present,
	provider => 'npm',
	install_opt => '--save-dev',
}

package { 'charlatan':
	ensure => present,
	provider => 'npm',
	install_opt => '--save-dev',
}

package { 'grunt':
	ensure => present,
	provider => 'npm',
	install_opt => '--save-dev',
}

package { 'grunt-contrib-watch':
	ensure => present,
	provider => 'npm',
	install_opt => '--save-dev',
}

package { 'grunt-contrib-compass':
	ensure => present,
	provider => 'npm',
	install_opt => '--save-dev',
}

package { 'grunt-cli':
	ensure => present,
	provider => 'npm',
	install_opt => '--save-dev',
}

# ----- Mongodb ----- #

class { 'mongodb':}
