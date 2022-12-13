
file { 'test_puppet':
  ensure => present,
}->
file_line { 'Append a line to /tmp/eureka.txt':
  path => 'test_puppet',  
  line => 'Hello World',
}
