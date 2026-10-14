//
//  main.m
//  DemoProject
//
//  Created by Julio Pramaitama on 23/08/25.
//

#import <Foundation/Foundation.h>

@interface Math:NSObject

+ (int) getSmaller:(int)number1 andNumber2:(int)number2;

@end

@implementation Math

+ (int) getSmaller:(int)number1 andNumber2:(int)number2
{
    int smaller = (number1 > number2) ? number2 : number1;
    return smaller;
}
@end

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        int result = [Math getSmaller:10 andNumber2:12];
        NSLog(@"The sSmaller one is: %d", result);
    }
    return 0;
}
