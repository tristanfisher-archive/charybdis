default[:charybdis][:installation][:md5] = '54245396b829f8d19d3958cde9c3bd65'

##########
# dline.conf.erb
##########
#default[:charybdis][:conf][:dline][:ipaddress] = ["192.168.255.255","169.0.0.1"]
default[:charybdis][:conf][:dline][:description] = 'deny any connections from the given IP address -- DLINE [length] a.b.c.d [ON servername] [:reason]'
default[:charybdis][:conf][:dline][:ipaddresses] = []

##########
# ircd.conf.erb
##########
#Include your extension_module.so -- the directory
#is already prefixed with extensions/

default[:charybdis][:conf][:ircd][:extensions] =  []
##Serverinfo
default[:charybdis][:conf][:ircd][:server_name] = 'hades.arpa'
default[:charybdis][:conf][:ircd][:sid] = '42X'
default[:charybdis][:conf][:ircd][:server_description] = 'charybdis test server'
default[:charybdis][:conf][:ircd][:network_name] = 'IRC Network Name goes here.  Or not.'
default[:charybdis][:conf][:ircd][:network_desc] = 'An IRC server network.'
default[:charybdis][:conf][:ircd][:network_hub] = 'yes'
#SSL
default[:charybdis][:conf][:ircd][:ssl_private_key] = 'etc/ssl.key'
default[:charybdis][:conf][:ircd][:ssl_cert] = 'etc/ssl.cert'
default[:charybdis][:conf][:ircd][:ssl_dh_params] = 'etc/dh.pem'
default[:charybdis][:conf][:ircd][:ssld_count] = '1'
default[:charybdis][:conf][:ircd][:default_max_clients] = '1024'
##Admin
default[:charybdis][:conf][:ircd][:admin_name] = 'IRC Aadmin'
default[:charybdis][:conf][:ircd][:admin_description] = 'An IRC Server Admin'
default[:charybdis][:conf][:ircd][:admin_email] = 'nobody@127.0.0.1'
##Log
default[:charybdis][:conf][:ircd][:fname_userlog] = "/var/log/charybdis/userlog"
default[:charybdis][:conf][:ircd][:fname_fuserlog] = "/var/log/charybdis/fuserlog"
default[:charybdis][:conf][:ircd][:fname_operlog] = "/var/log/charybdis/operlog"
default[:charybdis][:conf][:ircd][:fname_foperlog] = "/var/log/charybdis/foperlog"
default[:charybdis][:conf][:ircd][:fname_serverlog] = "/var/log/charybdis/serverlog"
default[:charybdis][:conf][:ircd][:fname_klinelog] = "/var/log/charybdis/klinelog"
default[:charybdis][:conf][:ircd][:fname_killlog] = "/var/log/charybdis/killlog"
default[:charybdis][:conf][:ircd][:fname_operspylog] = "/var/log/charybdis/operspylog"
default[:charybdis][:conf][:ircd][:fname_ioerrorlog] = "/var/log/charybdis/ioerror"
##Users
default[:charybdis][:conf][:ircd][:users_ping_time] = '2 minutes'
default[:charybdis][:conf][:ircd][:users_number_per_ident] = '10'
default[:charybdis][:conf][:ircd][:users_number_per_ip] = '10'
default[:charybdis][:conf][:ircd][:users_number_per_ip_global] = '50'
default[:charybdis][:conf][:ircd][:users_cidr_ipv4_bitlen] = '24'
default[:charybdis][:conf][:ircd][:users_cidr_ipv6_bitlen] = '64'
default[:charybdis][:conf][:ircd][:users_number_per_cidr] = '200'
default[:charybdis][:conf][:ircd][:users_max_number] = '3000'
default[:charybdis][:conf][:ircd][:users_sendq] = '400 kbytes'
##Opers
default[:charybdis][:conf][:ircd][:opers_ping_time] = '5 minutes'
default[:charybdis][:conf][:ircd][:opers_number_per_ip] = '10'
default[:charybdis][:conf][:ircd][:opers_max_number] = '1000'
default[:charybdis][:conf][:ircd][:opers_sendq] = '1 megabyte'
##Server
default[:charybdis][:conf][:ircd][:server_ping_time] = '5 minutes'
default[:charybdis][:conf][:ircd][:server_connectfreq] = '5 minutes'
default[:charybdis][:conf][:ircd][:server_max_number] = '1'
default[:charybdis][:conf][:ircd][:server_sendq] = '4 megabytes'
##Listen
default[:charybdis][:conf][:ircd][:listen_host] = '#192.169.0.1'
default[:charybdis][:conf][:ircd][:listen_port] = ['5000', '6665 .. 6669']
default[:charybdis][:conf][:ircd][:listen_sslport] = ['6697']
default[:charybdis][:conf][:ircd][:listen_ipv6_host] = "3ffe:1234:a:b:c::d"
default[:charybdis][:conf][:ircd][:listen_ipv6_port] = ['5000', '6665 .. 6669']
default[:charybdis][:conf][:ircd][:listen_ipv6_sslport] = ['9999']
##Auth
default[:charybdis][:conf][:ircd][:opers_auth_users] = ['*@172.16.0.0/12','*@fc00::*']
default[:charybdis][:conf][:ircd][:opers_password] = 'letmein'
default[:charybdis][:conf][:ircd][:opers_spoof] = 'I.still.hate.packets'
default[:charybdis][:conf][:ircd][:opers_flags] = ['kline_exempt','exceed_limit']
default[:charybdis][:conf][:ircd][:opers_auth_class] = 'opers'
##God Op user
default[:charybdis][:conf][:ircd][:god_op_name] = 'god'
default[:charybdis][:conf][:ircd][:god_op_userhost] = '*god@127.0.0.1'
default[:charybdis][:conf][:ircd][:god_op_password] = '66338d39b4bbb0649347f7d8de411486'
default[:charybdis][:conf][:ircd][:god_op_rsa_public_key_file] = '/usr/local/ircd/etc/oper.pub'
default[:charybdis][:conf][:ircd][:god_op_umodes] = ['locops', 'servnotice', 'operwall', 'wallop']
default[:charybdis][:conf][:ircd][:god_op_fingerprint] = 'c77106576abf7f9f90cca0f63874a60f2e40a64b'
default[:charybdis][:conf][:ircd][:god_op_snomask] = '+Zbfkrsuy'
##Normal/Default
default[:charybdis][:conf][:ircd][:default_umodes] = '+i'

##########
# ircd.motd.erb
##########
default[:charybdis][:conf][:motd] = "node['fqdn']"

##########
# kline.conf.erb
##########
default[:charybdis][:conf][:kline][:description] = 'ban the given user@host from using the server -- KLINE [length] [user@host | user@a.b.c.d] [ON servername] [:reason]'

##########
# reference.conf.erb
##########
default[:charybdis][:conf][:reference][:description] = 'Leave reference file in place to meet expectations for unpacked files from the charybdis package.'

##########
# resv.conf.erb
##########
default[:charybdis][:conf][:resv][:description] = 'http://www.stack.nl/~jilles/irc/charybdis-oper-guide/usercommands.htm#AEN693'

##########
# xline.conf.erb
##########
default[:charybdis][:conf][:xline][:description] = 'All clients matching the X:line will be disconnected from the server immediately -- XLINE [length] mask [ON servername] [:reason]'
