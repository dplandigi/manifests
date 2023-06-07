node 'puppetclient'{

  package { 'python':
    ensure => latest,
  }

  package { 'ffmpeg':
    ensure => latest,
  }
   

  exec { 'apt-get update':
    command => '/usr/bin/apt-get update',
     path => ['/usr/bin', '/usr/sbin', '/bin', '/sbin'],
   # path    => ['/usr/bin', '/usr/sbin'],
    user    => 'root',
    require => Package['python', 'ffmpeg'],
  }
}

node 'desktop-1772sp6'{
file { 'c:/dpl.txt':
    ensure   => present,
    content  => 'The DPL Knowledgebase'
   }
}
node 'testusers-ipro'{
file { '/file1':
    ensure => present,
    content => "Hello World",
}
}
