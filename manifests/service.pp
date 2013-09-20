define haproxy::service (
  $ensure = running,
  $enable = true
) {
  $service = $::operatingsystem ? {
    /(?i-mx:centos|fedora|redhat|scientific)/ => 'haproxy',
  }

  service { $service:
    ensure => $ensure,
    enable => $enable,
  }

}
