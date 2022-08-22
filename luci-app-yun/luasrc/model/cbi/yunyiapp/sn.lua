local lanmac = "YUNYI序列号：" .. "<b><font color=\"green\">" .. luci.sys.exec("echo $(dmesg | grep YUNYI_ID | awk '{print $5}' | tail -n 1)")
m = Map("network", translate("snyunyi"))
m.description = translate(" ")

sl = m:section(NamedSection, "lan", "interface", translate("YUNYI—SN"), lanmac)

return m
