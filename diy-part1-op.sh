
#!/bin/bash
#
# Copyright (c) 2019-2020 P3TERX <https://p3terx.com>
#
# This is free software, licensed under the MIT License.
# See /LICENSE for more information.
#
# https://github.com/P3TERX/Actions-OpenWrt
# File name: diy-part1.sh
# Description: OpenWrt DIY script part 1 (Before Update feeds)
#

# Uncomment a feed source
#sed -i 's/^#\(.*helloworld\)/\1/' feeds.conf.default

# Add a feed source
#sed -i '$a src-git lienol https://github.com/Lienol/openwrt-package' feeds.conf.default

# Add a feed source
#echo 'src-git helloworld https://github.com/fw876/helloworld' >>feeds.conf.default
#echo "src-git passwall_packages https://github.com/xiaorouji/openwrt-passwall.git;packages" >> "feeds.conf.default"
#echo "src-git passwallluci https://github.com/xiaorouji/openwrt-passwall.git;luci" >> "feeds.conf.default"
#echo "src-git passwall2luci https://github.com/xiaorouji/openwrt-passwall2.git" >> "feeds.conf.default"
cat >>feeds.conf.default <<EOF
src-git helloworld https://github.com/fw876/helloworld
src-git passwall_packages https://github.com/xiaorouji/openwrt-passwall.git;packages
src-git passwallluci https://github.com/xiaorouji/openwrt-passwall.git;luci
src-git passwall2luci https://github.com/xiaorouji/openwrt-passwall2.git
EOF
