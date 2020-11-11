localPath = scriptPath()
imagePath = (localPath .. "image/")
print(httpGet("https://raw.githubusercontent.com/rk00/swakl/main/version.txt"))
while true do
  wait(5)
end
