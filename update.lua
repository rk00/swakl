localPath = scriptPath()
imagePath = (localPath .. "image/")
--httpDownload("https://raw.githubusercontent.com/rk00/swakl/main/update.lua?token=ADBAEXFWR2GZF57PIME5FPC7VPMGI", localPath .. "main.lua")
checkVersion = os.execute("curl -H 'Authorization: token b983b7a243cc3d5661e50e2674f27cb61d7dd5f6' https://raw.githubusercontent.com/rk00/swakl/main/version.txt")
