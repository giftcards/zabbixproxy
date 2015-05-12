class zabbixproxy(
  $zabbix_server = $zabbixproxy::params::zabbix_server,
) inherits zabbixproxy::params {

  $packages = $zabbixproxy::params::packages
  $services = $zabbixproxy::params::services

  include zabbixproxy::packages
  include zabbixproxy::config
  include zabbixproxy::services
}
