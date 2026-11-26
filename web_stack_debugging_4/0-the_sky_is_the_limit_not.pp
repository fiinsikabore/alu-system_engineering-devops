# Increases the open files limit of Nginx so it can handle many requests at once
exec { 'fix--for-nginx':
  command => 'sed -i "s/15/4096/" /etc/default/nginx',
  path    => '/usr/local/bin/:/bin/',
}

exec { 'restart-nginx':
  command => '/etc/init.d/nginx restart',
  require => Exec['fix--for-nginx'],
}
