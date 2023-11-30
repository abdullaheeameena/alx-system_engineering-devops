#!/usr/bin/env bash
# usin puppet to connect without using password
file { 'etc/ssh/ssh_config':
   ensure => present,
}

file_line { 'Turn off passwd auth':
    path => '/etc/ssh/ss_config',
    line => 'PasswordAuthentication no',
    match => '^#PasswordAuthentication',
}

file_line { 'Declare identity file',
     path => '/etc/ssh/ss_config',
     line => 'IdentityFile ~/.ssh/school',
     match => '^#IdentityFile',
}

