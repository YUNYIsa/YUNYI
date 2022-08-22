o= Map("system", translate("Impersonate hostname"))
pp= o:section(TypedSection,"system", translate("Produced by YUNYI"))
pp.anonymous = true 
hostname = pp:option(Value, "hostname", translate("Analog device name"))

return o