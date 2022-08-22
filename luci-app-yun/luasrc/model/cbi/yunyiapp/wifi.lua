n = Map("wireless", translate("wifisi"),translate("hint"))
d = n:section(TypedSection, "wifi-iface",translate("wuxian"))
d.anonymous = true

ss = d:option(Value, "ssid", translate("WiFi name"));
pp = d:option(ListValue, "encryption", translate("encryption type"))
pp:value("psk", translate("psk"))
pp:value("none", translate("not encrypted")) 
pp.default = "none"   
key = d:option(Value, "key",translate("password"),translate("Password must be at least 8 characters"))
key:depends("encryption", "psk")
key.datatype = "wpakey"

local apply=luci.http.formvalue("cbi.apply")
if apply then
    luci.util.exec("/etc/init.d/network restart &")
end

return n