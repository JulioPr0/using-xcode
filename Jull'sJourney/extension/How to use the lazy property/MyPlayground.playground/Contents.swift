import UIKit

class Demo
{
    var url:NSString
    lazy var completeURL:NSString =
    {
        [unowned self] in
        if self.url.hasPrefix("http://")
        {
            return self.url
        }
        else
        {
            return "http://\(self.url)" as NSString
        }
    }()
    
    init(url:NSString)
    {
        self.url = url
    }
}

let demo = Demo(url: "www.websitejulio.com")
demo.url
demo
demo.completeURL
demo
