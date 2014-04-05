node apacheserver {
  class {'apache': }

  apache::vhost {'sumit.azcender.com':
    servername => 'sumit.azcender.com',
    proxy_pass => [
      { 'path' => '/', 'url' => 'http://192.168.168.10:8080/' },
    ],
    docroot    => '/www',
  }

#  class {'apache':
#    default_vhost => false,
#  }

#  apache::vhost {'sumit.azcender.com':
#    proxy_pass => [
#      { 'path' => '/', 'url' => 'http://192.168.168.10:8080' },
#    ],
#    proxy_dest => 'http://192.168.168.10:8080',
#  }
}
