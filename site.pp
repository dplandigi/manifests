node 'desktop-1772sp6'{
file { 'c:/dpl.txt':
    ensure   => present,
    content  => 'Windows Puppet Agent Setup - Qyrus Infra'
   }
}

node 'testusers-ipro'{
file { '/Users/testuser/file1':
    ensure => present,
    content => "Mac Puppet Agent Setup - Qyrus Infra",
}
}
