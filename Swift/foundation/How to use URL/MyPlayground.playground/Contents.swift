import Foundation

let url = URL(string: "https://www.websitejulio.com")
url?.absoluteString

var secondUrl = url?.appendingPathComponent("demo/login")
secondUrl?.deletingLastPathComponent()
secondUrl?.host
secondUrl?.lastPathComponent

let thirdUrl = URL(string:
    "https://www.websitejulio.com:8080/login.action?username=hoiluj")
thirdUrl?.port
thirdUrl?.query
thirdUrl?.scheme

let targetPath:String = NSHomeDirectory() + "/Documents/music.png"
let fileUrl = URL(string: targetPath)
fileUrl?.pathComponents
fileUrl?.pathExtension
