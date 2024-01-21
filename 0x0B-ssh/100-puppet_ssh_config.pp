#!/usr/bin/env bash
# using puppet to to make changes in our configuration files

file { 'etc/ssh/ssh_config':
	ensure => present,

content =>"

	#ssh client configuration
	host*
	IdentityFile ~/.ssh/school
	PasswordAuthentication no
	",
} 
