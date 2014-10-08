class haproxy (
  $ensure = 'latest'
){
  $required = $::operatingsystem ? {
    /(?i-mx:centos|fedora|redhat|scientific)/ => 'haproxy',
  }

  package { $required: ensure => $ensure }

}
