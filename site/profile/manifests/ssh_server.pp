class profile::ssh_server {
  package {'openssh-server':
    ensure => present,
  }
  service { 'sshd':
    ensure => 'running',
    enable => 'true',
  }
  ssh_authorized_key { 'root@master.puppet.vm':
    ensure => present,
    user   => 'root',
    type   => 'ssh-rsa',
    key    => 'AAAAB3NzaC1yc2EAAAADAQABAAABAQC8eLrrSjE/nvOOOxMEIpDhHWf8WybE2z6pEOzmcEAjFR/xwOyum/gj3h4sPaByME29RLz5VmdD2Zg4gg0SyxWDQnuqDORRkgQD+P/ttA/x/svPDY9YdDhn7EXCx+6zKXdDu6D+5GTdBgWp+VkSS7o+tvxeBjCgvvlRIfffP+WoFy/ytqkyT9zzPmSLnw++wkbfbyIUfkY9VwXwoK0gP3wcFFB6jBr2IwJB9jAJJd4lopOuOJxxHnuu+yE51yKEx/7uZHOvaMPVspQDCi0DSARIiJjSTYS0Oa3ABNxpMA0z41ZQi1RPb0v/RwaDxeo2cr9ydz610ulHICiMguhOMIz5 root@master.puppet.vm',
  }  
}
