file {'~/.ssh/school':
ensure                    => present,
PasswordAuthentication    => 'no',
IndetityFile              => 'yes',
HashKnownHosts            => 'yes',
GSSAPIAUthentication      => 'yes',
GSSAPIDelegateCredentials => 'no',
}
