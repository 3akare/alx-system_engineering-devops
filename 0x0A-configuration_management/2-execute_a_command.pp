# Manifest that kills a process named killnow

exec { 'pkill -f killmenow':
  path => '/usr/bin:/usr/local/bin/:/bin/',
}
