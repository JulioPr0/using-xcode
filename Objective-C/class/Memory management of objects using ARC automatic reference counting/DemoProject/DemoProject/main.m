//
//  main.m
//  DemoProject
//
//  Created by Julio Pramaitama on 13/10/26.
//

#import <Foundation/Foundation.h>

@interface GreetingClass: NSObject
- (void)sayHello;
@end

@implementation GreetingClass
- (void)sayHello
{
    NSLog(@"Hello, Objective-C! \n");
}

- (void)dealloc
{
    NSLog(@">>>>>The greeting object is deallocated.");
}
@end

int main(int argc, const char * argv[])
{
    @autoreleasepool
    {
        GreetingClass *greeting = [[GreetingClass alloc] init];
        [greeting sayHello];
    }
    
    return 0;
}
