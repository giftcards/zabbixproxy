class zabbixproxy::services {
  require(zabbixproxy::config)
  require(zabbixproxy::packages)

  service { $zabbixproxy::services:
    ensure  => running,
    enable  => true,
    require => Package['zabbix-proxy'],
  }
}
