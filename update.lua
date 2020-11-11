localPath = scriptPath()
imagePath = (localPath .. "image/")
newestVersion = loadstring(httpGet("https://raw.githubusercontent.com/rk00/swakl/main/version.txt"))()
currentVersion = dofile(localPath .. "version.lua")
print(newestVersion)
print(currentVersion)
if currentVersion == newestVersion then
  toast("Running latest version")
else
  httpDownload("https://raw.githubusercontent.com/rk00/swakl/main/update.lua")
  scriptExit("You have updated script!")
end

while true do
  wait(5)
end
