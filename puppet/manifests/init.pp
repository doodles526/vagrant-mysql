group {"puppet":
        ensure => 'present'
}

#exec { "apt-get update":

#        command => "/usr/bin/apt-get update"

#}

#include mysql

class { 'mysql::server': 
        config_hash => {'root_password' => 'orvsd_central'}
}

mysql::db {   'central':
        user => 'orvsd',
        password => 'orvsd_central',
        host => 'localhost',
        grant => ['all'],
}
