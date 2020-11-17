localPath = scriptPath()

newestVersion = loadstring(httpGet("https://raw.githubusercontent.com/rk00/swakl/main/version.lua"))()

if(io.open(localPath .. "version.lua","r")) then
	currentVersion = dofile(localPath .. "version.lua")
else
	currentVersion = "v0.0.0"
end

if currentVersion ~= newestVersion then
  httpDownload("https://raw.githubusercontent.com/rk00/swakl/main/version.lua", localPath .."version.lua")
  httpDownload("https://raw.githubusercontent.com/rk00/swakl/main/main.lua", localPath .."main.lua")
end

dofile(localPath .. "main.lua")
