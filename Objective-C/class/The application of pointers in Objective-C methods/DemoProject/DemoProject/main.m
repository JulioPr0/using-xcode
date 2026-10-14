//
//  main.m
//  DemoProject
//
//  Created by Julio Pramaitama on 23/08/25.
//

#import <Foundation/Foundation.h>

@interface SwapClass:NSObject
    
- (void) swapParameters:(int)number1 andNumber2:(int)number2;
- (void) swapNumbers:(int *)number1 andNumber2:(int *)number2;

@end

@implementation SwapClass

- (void) swapParameters:(int)number1 andNumber2:(int)number2
{
    int tempNumber = number1;
    number1 = number2;
    number2 = tempNumber;
}
- (void) swapNumbers:(int *)number1 andNumber2:(int *)number2
{
    int tempNumber = *number1;
    *number1 = *number2;
    *number2 = tempNumber;
}
@end

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        int number1 = 1;
        int number2 = 2;
        NSLog(@"number1 = %d, number2 = %d", number1, number2);
        
        SwapClass *object = [[SwapClass alloc] init];
        [object swapParameters:number1 andNumber2:number2];
        NSLog(@"number1 = %d, number2 = %d", number1, number2);
        
        [object swapNumbers:&number1 andNumber2:&number2];
        NSLog(@"---swapNumbers---\n");
        NSLog(@"number1 = %d, number2 = %d", number1, number2);
    }
    return 0;
}
