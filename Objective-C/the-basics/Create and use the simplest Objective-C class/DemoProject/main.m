//
//  main.m
//  DemoProject
//
//  Created by Julio Pramaitama on 01/04/25.
//

#import <Foundation/Foundation.h>

@interface FirstClass:NSObject
- (void)sayHello;
@end

@implementation FirstClass
- (void)sayHello
{
    NSLog(@"Hello, Objective-C! \n");
}
@end

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        FirstClass *sampleClass = [[FirstClass alloc] init];
        [sampleClass sayHello];
    }
    return 0;
}
