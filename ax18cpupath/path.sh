#!/bin/bash

#调整CPU频率
 cd openwrt/target/linux/ipq60xx/files-4.4/arch/arm64/boot/dts/qcom/
 rm -rf qcom-ipq6000-cpu-opp.dtsi
 wget https://raw.githubusercontent.com/lauren12133/OpenWrt-Build/main/ax18cpupath/qcom-ipq6000-cpu-opp.dtsi
 cd
 
#添加桥管理
 cd openwrt/target/linux/ipq60xx/
 rm -rf Makefile
 wget https://raw.githubusercontent.com/lauren12133/OpenWrt-Build/main/ax18cpupath/Makefile
 cd

#dnsmasq：默认不过滤 AAAA 记录
 cd openwrt/package/network/services/dnsmasq/files/
 rm -rf dhcp.conf
 wget https://raw.githubusercontent.com/lauren12133/OpenWrt-Build/main/ax18cpupath/dhcp.conf
 cd

#tcp 65535 
 cd openwrt/package/kernel/linux/files/
 rm -rf sysctl-nf-conntrack.conf
 wget https://raw.githubusercontent.com/lauren12133/OpenWrt-Build/main/ax18cpupath/sysctl-nf-conntrack.conf
 cd
 
#禁用nss网桥
 cd openwrt/package/qca/qca-nss-ecm/files/
 rm -rf qca-nss-ecm.init
 wget https://raw.githubusercontent.com/lauren12133/OpenWrt-Build/main/ax18cpupath/qca-nss-ecm.init
 cd
