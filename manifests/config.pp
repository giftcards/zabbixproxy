class zabbixproxy::config {
  require(zabbixproxy::packages)

  File { ensure  => file,
    owner  => root,
    group  => zabbix,
    mode  => 0640,
    notify  => Service[$zabbixproxy::services],
    require  => Package[$zabbixproxy::packages],
  }

  file { '/etc/zabbix/zabbix_proxy.conf':
    content  => template('zabbixproxy/zabbix_proxy.erb'),
  }

  file { '/var/lib/zabbix':
    ensure => directory,
    owner  => zabbix,
    group  => zabbix,
  }
}
