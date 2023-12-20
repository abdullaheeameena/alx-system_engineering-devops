#!/usr/bin/env bash
# usin puppet to connect without using password
file { 'etc/ssh/ssh_config':
   ensure => present,

content =>"
	#SSH client configuration
	host"
	Identityfile ~/.ssh/school
	PasswordAuthentication no
}
