#Installing flask from pip3 using puppet

package { 'flask':
ensure   => '2.1.0',
provider => 'pip3',
}

