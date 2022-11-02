#!/bin/bash

#更新feeds.conf.default
 #rm -rf feeds.conf.default
 #wget https://raw.githubusercontent.com/lauren12133/OpenWrt-Build/main/ax18cpupath/feeds.conf.default
 
#调整CPU频率
 rm -rf target/linux/ipq60xx/files-4.4/arch/arm64/boot/dts/qcom/qcom-ipq6000-cpu-opp.dtsi
 wget -P target/linux/ipq60xx/files-4.4/arch/arm64/boot/dts/qcom/ https://raw.githubusercontent.com/lauren12133/OpenWrt-Build/main/ax18cpupath/qcom-ipq6000-cpu-opp.dtsi 
 
#添加桥管理
 rm -rf target/linux/ipq60xx/Makefile
 wget -P target/linux/ipq60xx/ https://raw.githubusercontent.com/lauren12133/OpenWrt-Build/main/ax18cpupath/Makefile

#dnsmasq：默认不过滤 AAAA 记录
 rm -rf package/network/services/dnsmasq/files/dhcp.conf
 wget -P package/network/services/dnsmasq/files/ https://raw.githubusercontent.com/lauren12133/OpenWrt-Build/main/ax18cpupath/dhcp.conf

#tcp 65535 
 rm -rf package/kernel/linux/files/sysctl-nf-conntrack.conf
 wget -P package/kernel/linux/files/ https://raw.githubusercontent.com/lauren12133/OpenWrt-Build/main/ax18cpupath/sysctl-nf-conntrack.conf
 
#禁用nss网桥
 rm -rf package/qca/qca-nss-ecm/files/qca-nss-ecm.init
 wget -P package/qca/qca-nss-ecm/files/ https://raw.githubusercontent.com/lauren12133/OpenWrt-Build/main/ax18cpupath/qca-nss-ecm.init
