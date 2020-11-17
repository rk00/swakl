localPath = scriptPath()
imagePath = (localPath .. "image/")

newestVersion = loadstring(httpGet("https://raw.githubusercontent.com/rk00/swakl/main/version.lua"))()

if(io.open(localPath .. "version.lua","r")) then
	currentVersion = dofile(localPath .. "version.lua")
else
	currentVersion = "0.0.0"
end
print(newestVersion)
print(currentVersion)
if currentVersion == newestVersion then
  toast("Running latest version")
else
  httpDownload("https://raw.githubusercontent.com/rk00/swakl/main/version.lua", localPath .."version.lua")
  httpDownload("https://raw.githubusercontent.com/rk00/swakl/main/main.lua", localPath .."main.lua")
  scriptExit("You have updated script!")
end

dofile(localPath .. "version.lua")
