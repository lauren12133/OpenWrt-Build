#!/bin/bash

#调整CPU频率
 cd openwrt/
 rm -rf target/linux/ipq60xx/files-4.4/arch/arm64/boot/dts/qcom/qcom-ipq6000-cpu-opp.dtsi
 wget https://raw.githubusercontent.com/lauren12133/OpenWrt-Build/main/ax18cpupath/qcom-ipq6000-cpu-opp.dtsi target/linux/ipq60xx/files-4.4/arch/arm64/boot/dts/qcom/
 
#添加桥管理
 rm -rf target/linux/ipq60xx/Makefile
 wget https://raw.githubusercontent.com/lauren12133/OpenWrt-Build/main/ax18cpupath/Makefile target/linux/ipq60xx/

#dnsmasq：默认不过滤 AAAA 记录
 rm -rf package/network/services/dnsmasq/files/dhcp.conf
 wget https://raw.githubusercontent.com/lauren12133/OpenWrt-Build/main/ax18cpupath/dhcp.conf package/network/services/dnsmasq/files/

#tcp 65535 
 rm -rf package/kernel/linux/files/sysctl-nf-conntrack.conf
 wget https://raw.githubusercontent.com/lauren12133/OpenWrt-Build/main/ax18cpupath/sysctl-nf-conntrack.conf package/kernel/linux/files/
 
#禁用nss网桥
 rm -rf package/qca/qca-nss-ecm/files/qca-nss-ecm.init
 wget https://raw.githubusercontent.com/lauren12133/OpenWrt-Build/main/ax18cpupath/qca-nss-ecm.init package/qca/qca-nss-ecm/files/
