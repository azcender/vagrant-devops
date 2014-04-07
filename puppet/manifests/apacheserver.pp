node apacheserver {

  class { 'apache': }

  apache::vhost {'sumit.azcender.com':
    servername => 'sumit.azcender.com',
    vhost_name => '*',
    port       => 80,
    proxy_pass => [
      { 'path' => '/', 'url' => 'http://192.168.168.10:8080/' },
    ],
    docroot    => '/www',
  }

  apache::vhost {'tomcat.azcender.com':
    servername => 'tomcat.azcender.com',
    vhost_name => '*',
    port       => 80,
    proxy_pass => [
      { 'path' => '/', 'url' => 'http://192.168.168.10:8080/' },
    ],
    docroot    => '/www',
  }

    apache::vhost {'jenkins.azcender.com':
    servername => 'jenkins.azcender.com',
    vhost_name => '*',
    port       => 80,
    proxy_pass => [
      { 'path' => '/', 'url' => 'http://192.168.168.20:8080/' },
    ],
    docroot    => '/www',
  }

    apache::vhost {'artifactory.azcender.com':
    servername => 'artifactory.azcender.com',
    vhost_name => '*',
    port       => 80,
    proxy_pass => [
      { 'path' => '/', 'url' => 'http://192.168.168.40:8080/' },
    ],
    docroot    => '/www',
  }

  apache::vhost {'staging.azcender.com':
    servername => 'staging.azcender.com',
    vhost_name => '*',
    port       => 80,
    proxy_pass => [
      { 'path' => '/', 'url' => 'http://192.168.168.50:8080/' },
    ],
    docroot    => '/www',
  }
}
