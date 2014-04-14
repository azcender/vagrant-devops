node apacheserver {

  class { 'apache': }

  file {['/var', '/var/yumrepos', '/var/cache', '/var/cache/yumrepos']:
    ensure => directory,
    owner  => 'root',
    group  => 'root',
    mode   => '0755',
  } 

  apache::vhost {'yum-snapshot':
    port    => '8280',
    docroot => '/var/yumrepos/snapshot',
  }

  createrepo { 'snapshot':
    require => Apache::Vhost['yum-snapshot'],
  }

#  $myhosts = hiera_array('hosts')
  create_resources(host, hiera('hosts'))
}
