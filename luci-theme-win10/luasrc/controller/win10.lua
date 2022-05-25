module("luci.controller.win10", package.seeall)

function index()

    page = entry({"admin", "system", "win10"}, template("win10"), _("Win10"),60)
    page.i18n = "base"
    page.dependent = true

end
