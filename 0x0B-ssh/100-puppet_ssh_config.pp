# Configure /etc/ssh/ssh_config to Automatically connect to ubuntu Server with out using password

file {'Change the main private key':
path  => '/etc/ssh/ssh_config',
line => ' IdentityFile ~/.ssh/school'
}

file_line { 'No Authenticate with password':
  path => '/etc/ssh/ssh_config',
  line => ' PasswordAuthentication no'
  line => ' GSSAPIDelegateCredentials no'
  line => ' GSSAPIAuthentication yes'
  line => ' HashKnownHosts yes'
}
