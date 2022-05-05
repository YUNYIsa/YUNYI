-- Copyright 2008 Steven Barth <steven@midlink.org>
-- Copyright 2011 Jo-Philipp Wich <jow@openwrt.org>
-- Licensed to the public under the Apache License 2.0.

module("luci.controller.yunyiapp.yunyi", package.seeall)

function index()

               entry({"admin", "yun"}, alias("admin", "yun", "overview"), _("YUNYI"), 1).index = true
               entry({"admin", "yun", "overview"}, template("admin_status/index"), _("wangluo"), 1)
               entry({"admin","yun","yunyi"}, cbi("yunyiapp/wifi"), _("WiFi"), 2)
               entry({"admin","yun","gldz"}, cbi("yunyiapp/lan"), _("IP set up"), 5)
               entry({"admin","yun","moni"}, cbi("yunyiapp/moni"), _("Analog device name"), 6)

end
