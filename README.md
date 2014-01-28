haproxy
=======

HAProxy is a free, very fast and reliable solution offering high availability,
load balancing, and proxying for TCP and HTTP-based applications. It is
particularly suited for web sites crawling under very high loads while needing
persistence or Layer7 processing. Supporting tens of thousands of connections
is clearly realistic with todays hardware. Its mode of operation makes its
integration into existing architectures very easy and riskless, while still
offering the possibility not to expose fragile web servers to the Net.

Note
----

This is being revamped to leverage the full capability. Use at your own risk
until further notice.

Samples
-------
```
include haproxy
```
```
haproxy::service { 'default': ensure => running, enable => true }
```
This will be replaced with a more complete definition.
```
haproxy::config { 'default': backends => [ '192.168.1.10', '192.168.1.20' ] }
```
