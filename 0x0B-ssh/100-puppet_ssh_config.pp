# Configure the ssh_config file to allow access to my ubuntu server with out requesting for a private key

file_line { 'Change the main private key':
  path => '/etc/ssh/ssh_config',
  line => '    IdentityFile ~/.ssh/school',
}

file_line { 'No Authenticate with password':
  path => '/etc/ssh/ssh_config',
  line => '    PasswordAuthentication no',
}
