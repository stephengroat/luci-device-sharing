--[[
LuCI - Lua Configuration Interface - Device sharing

Copyright 2015 Stephen Groat.

Licensed under the Apache License, Version 2.0 (the "License");
you may not use this file except in compliance with the License.
You may obtain a copy of the License at

        http://www.apache.org/licenses/LICENSE-2.0

$Id$
]]--

module("luci.controller.device_sharing", package.seeall)

function index()
	if not nixio.fs.access("/etc/config/firewall") then
		return
	end
--	if not nixio.fs.access("/etc/config/device_sharing") then
--		return
--	end
	
	local page
	page = entry({"admin", "network", "device_sharing"}, 
	    cbi("device_sharing"), _("Device Sharing"))
	page.dependent = true
end
