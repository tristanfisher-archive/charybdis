#
# Cookbook Name:: charybdis
# Recipe:: default
#
# Copyright 2013, Amplify
#

package 'charybdis' do
  action [:install]
end
Chef::Log.info("charybdis installed")

template "/etc/charybdis/dline.conf" do
	source "dline.conf.erb"
	mode	0444
	owner	node[:charybdis][:users]
	group	node[:charybdis][:group]
	variables({
    :description => node[:charybdis][:conf][:dline][:description],
    :ipaddresses => node[:charybdis][:conf][:dline][:ipaddresses]
	})
end

template "/etc/charybdis/ircd.conf" do
	source "ircd.conf.erb"
	mode	0444
	owner	node[:charybdis][:users]
	group	node[:charybdis][:group]
	variables({
    :extensions => node[:charybdis][:conf][:ircd][:extensions],
    :server_name => node[:charybdis][:conf][:ircd][:server_name],
    :sid => node[:charybdis][:conf][:ircd][:sid],
    :server_description => node[:charybdis][:conf][:ircd][:server_description],
    :network_name => node[:charybdis][:conf][:ircd][:network_name],
    :network_desc => node[:charybdis][:conf][:ircd][:network_desc],
    :network_hub => node[:charybdis][:conf][:ircd][:network_hub],
    :ssl_private_key => node[:charybdis][:conf][:ircd][:ssl_private_key],
    :ssl_cert => node[:charybdis][:conf][:ircd][:ssl_cert],
    :ssl_dh_params => node[:charybdis][:conf][:ircd][:ssl_dh_params],
    :ssld_count => node[:charybdis][:conf][:ircd][:ssld_count],
    :default_max_clients => node[:charybdis][:conf][:ircd][:default_max_clients],
    :admin_name => node[:charybdis][:conf][:ircd][:admin_name],
    :admin_description => node[:charybdis][:conf][:ircd][:admin_description],
    :admin_email => node[:charybdis][:conf][:ircd][:admin_email],
    :fname_userlog => node[:charybdis][:conf][:ircd][:fname_userlog],
    :fname_fuserlog => node[:charybdis][:conf][:ircd][:fname_fuserlog],
    :fname_operlog => node[:charybdis][:conf][:ircd][:fname_operlog],
    :fname_foperlog => node[:charybdis][:conf][:ircd][:fname_foperlog],
    :fname_serverlog => node[:charybdis][:conf][:ircd][:fname_serverlog],
    :fname_klinelog => node[:charybdis][:conf][:ircd][:fname_klinelog],
    :fname_killlog => node[:charybdis][:conf][:ircd][:fname_killlog],
    :fname_operspylog => node[:charybdis][:conf][:ircd][:fname_operspylog],
    :fname_ioerrorlog => node[:charybdis][:conf][:ircd][:fname_ioerrorlog],
    :users_ping_time => node[:charybdis][:conf][:ircd][:users_ping_time],
    :users_number_per_ident => node[:charybdis][:conf][:ircd][:users_number_per_ident],
    :users_number_per_ip => node[:charybdis][:conf][:ircd][:users_number_per_ip],
    :users_number_per_ip_global => node[:charybdis][:conf][:ircd][:users_number_per_ip_global],
    :users_cidr_ipv4_bitlen => node[:charybdis][:conf][:ircd][:users_cidr_ipv4_bitlen],
    :users_cidr_ipv6_bitlen => node[:charybdis][:conf][:ircd][:users_cidr_ipv6_bitlen],
    :users_number_per_cidr => node[:charybdis][:conf][:ircd][:users_number_per_cidr],
    :users_max_number => node[:charybdis][:conf][:ircd][:users_max_number],
    :users_sendq => node[:charybdis][:conf][:ircd][:users_sendq],
    :opers_ping_time => node[:charybdis][:conf][:ircd][:opers_ping_time],
    :opers_number_per_ip => node[:charybdis][:conf][:ircd][:opers_number_per_ip],
    :opers_max_number => node[:charybdis][:conf][:ircd][:opers_max_number],
    :opers_sendq => node[:charybdis][:conf][:ircd][:opers_sendq],
    :server_ping_time => node[:charybdis][:conf][:ircd][:server_ping_time],
    :server_connectfreq => node[:charybdis][:conf][:ircd][:server_connectfreq],
    :server_max_number => node[:charybdis][:conf][:ircd][:server_max_number],
    :server_sendq => node[:charybdis][:conf][:ircd][:server_sendq],
    :listen_host => node[:charybdis][:conf][:ircd][:listen_host],
    :listen_port => node[:charybdis][:conf][:ircd][:listen_port],
    :listen_sslport => node[:charybdis][:conf][:ircd][:listen_sslport],
    :listen_ipv6_host => node[:charybdis][:conf][:ircd][:listen_ipv6_host],
    :listen_ipv6_port => node[:charybdis][:conf][:ircd][:listen_ipv6_port],
    :listen_ipv6_sslport => node[:charybdis][:conf][:ircd][:listen_ipv6_sslport],
    :opers_auth_users => node[:charybdis][:conf][:ircd][:opers_auth_users],
    :opers_password => node[:charybdis][:conf][:ircd][:opers_password],
    :opers_spoof => node[:charybdis][:conf][:ircd][:opers_spoof],
    :opers_flags => node[:charybdis][:conf][:ircd][:opers_flags],
    :opers_auth_class => node[:charybdis][:conf][:ircd][:opers_auth_class],
    :god_op_name => node[:charybdis][:conf][:ircd][:god_op_name],
    :god_op_userhost => node[:charybdis][:conf][:ircd][:god_op_userhost],
    :god_op_password => node[:charybdis][:conf][:ircd][:god_op_password],
    :god_op_rsa_public_key_file => node[:charybdis][:conf][:ircd][:god_op_rsa_public_key_file],
    :god_op_umodes => node[:charybdis][:conf][:ircd][:god_op_umodes],
    :god_op_fingerprint => node[:charybdis][:conf][:ircd][:god_op_fingerprint],
    :god_op_snomask => node[:charybdis][:conf][:ircd][:god_op_snomask],
    :default_umodes => node[:charybdis][:conf][:ircd][:default_umodes]
	})
end

template "/etc/charybdis/ircd.motd" do
	source "ircd.motd.erb"
	mode	0444
	owner	node[:charybdis][:users]
	group	node[:charybdis][:group]
	variables({
    :motd => node[:charybdis][:conf][:motd]
	})
end

template "/etc/charybdis/kline.conf" do
	source "kline.conf.erb"
	mode	0444
	owner	node[:charybdis][:users]
	group	node[:charybdis][:group]
	variables({
    :kline_description => node[:charybdis][:conf][:kline][:description]
	})
end

template "/etc/charybdis/reference.conf" do
	source "reference.conf.erb"
	mode	0444
	owner	node[:charybdis][:users]
	group	node[:charybdis][:group]
	variables({
    :reference_description => node[:charybdis][:conf][:reference][:description]
	})
end

template "/etc/charybdis/resv.conf" do
	source "resv.conf.erb"
	mode	0444
	owner	node[:charybdis][:users]
	group	node[:charybdis][:group]
	variables({
    :resv_description => node[:charybdis][:conf][:resv][:description]
	})
end

template "/etc/charybdis/xline.conf" do
	source "xline.conf.erb"
	mode	0444
	owner	node[:charybdis][:users]
	group	node[:charybdis][:group]
	variables({
    :xline_description => node[:charybdis][:conf][:xline][:description]
	})
end

