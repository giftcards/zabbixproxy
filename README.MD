## Synopsis  
  
Puppet module to setup a zabbix proxy to talk to a primary zabbix server.  
  
## Example  
  
Defaults are stores in params.pp.  
  
## Motivation  
  
Required for zabbix support in our cloud and secure environments.  
  
## Installation  
  
Tested on CentOS 6 and zabbix 2.2.  
Requires the zabbix and zabbix contrib repositories https://www.zabbix.com/documentation/2.2/manual/installation/install_from_packages.  
Does NOT work properly with the zabbix packages from the epel.  
Obviously requires a working zabbix installation.  
  
## API Reference  
  
zabbix_server => zabbix master server to talk to  
  
## Contributors  
  
Ryan Munz for Giftcards.com - May 2015  
