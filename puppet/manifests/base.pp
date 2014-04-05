
package {
  [ "wget", "git-core" ] :
    ensure => present
  }

case $role {
  appserver:  { import '/vagrant/puppet/manifests/appserver.pp' }
  database:   { import '/vagrant/puppet/manifests/database.pp'  }
  webserver:  { import '/vagrant/puppet/manifests/webserver.pp' }
  default:    { fail("Unknown role passed from vagrant") }
}
