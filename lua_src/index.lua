licence = {}

licence["www.sample.com"] = "licence_key1"
licence["localhost"] = "licence_key2"


-- get host
local host = ngx.var.host

local render_settings = {
   licence_key = licence[host]
}

-- render template
local template = require("resty.template")
template.render("1.js", render_settings)