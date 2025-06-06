//
//  main.m
//  DemoProject
//
//  Created by Julio Pramaitama on 06/06/25.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        NSURL *baseURL = [NSURL URLWithString:@"file:///usr/lbrary/apache/"];
        NSURL *fileUrl = [NSURL URLWithString:@"root/index.html"
            relativeToURL:baseURL];
        NSURL *absoluteURL = [fileUrl absoluteURL];
        NSLog(@"absoluteURL = %@", absoluteURL);
        
        NSURL *url = [NSURL URLWithString:
            @"http://www.websitejulio.com:8080/tutorial/filter.html?title=interactive_tutorials&category=ios"];
        
        NSLog(@"Scheme: %@", [url scheme]);
        NSLog(@"ResourceSpecifier: %@", [url resourceSpecifier]);
        
        NSLog(@"Host: %@", [url host]);
        NSLog(@"Port: %@", [url port]);
        NSLog(@"Path: %@", [url path]);
        
        NSLog(@"Path component as array: %@", [url pathComponents]);
        NSLog(@"Query: %@", [url query]);
    }
    return 0;
}
