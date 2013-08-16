class haproxy {
  $required = $operatingsystem ? {
    /(?i-mx:centos|fedora|redhat|scientific)/ => 'haproxy',
  }

  package { $required: ensure => latest }

}

define haproxy::service ( $ensure = running,
                          $enable = true ) {
  $config = $operatingsystem ? {
    /(?i-mx:centos|fedora|redhat|scientific)/ => '/etc/haproxy/haproxy.cfg',
  }
    
  $service = $operatingsystem ? {
    /(?i-mx:centos|fedora|redhat|scientific)/ => 'haproxy',
  }

  service { $service:
    ensure    => $ensure,
    enable    => $emable,
    subscribe => File[$config],
  }

}

define haproxy::config ( $backends ) {
  $config = $operatingsystem ? {
    /(?i-mx:centos|fedora|redhat|scientific)/ => '/etc/haproxy/haproxy.cfg',
  }
    
  file { $config:
    ensure  => present,
    owner   => 'root',
    group   => 'root',
    mode    => '0644',
    content => template('haproxy/haproxy.erb'),
  }

}
