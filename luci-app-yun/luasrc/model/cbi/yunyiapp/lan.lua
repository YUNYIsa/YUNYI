m = Map("network", translate("route management address"))
s = m:section(TypedSection, "interface",translate("lan interface"))
s.anonymous = true
function s:filter(value)
   return value == "lan" and value
end

g = s:option(Value, "ipaddr",translate("router IP"))
g.datatype = "ip4addr"

local apply=luci.http.formvalue("cbi.apply")
if apply then
    luci.util.exec("/etc/init.d/network restart &")
    luci.util.exec("ifdown wan && ifup wan")
end

return m