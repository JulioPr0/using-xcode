//
//  main.m
//  DemoProject
//
//  Created by Julio Pramaitama on 18/08/25.
//

#import <Foundation/Foundation.h>

@interface Math:NSObject
- (int) getBigger:(int)number1 andNumber2:(int)number2;
@end

@implementation Math
- (int) getBigger:(int)number1 andNumber2:(int)number2;
{
    int bigger = (number1 > number2) ? number1 : number2;
    return bigger;
}
@end

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        Math *math = [[Math alloc]init];
        
        int result = [math getBigger:3 andNumber2:8];
        NSLog(@"The bigger one is: %d", result);
    }
    return 0;
}
