//
//  main.m
//  DemoProject
//
//  Created by Julio Pramaitama on 17/08/25.
//

#import <Foundation/Foundation.h>

@interface HalfClass:NSObject

- (void) getHalf:(int *)pointer;

@end

@implementation HalfClass

- (void) getHalf:(int *)pointer
{
    *pointer = *pointer/2;
    return;
}

@end

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        int number = 10;
        
        HalfClass *object = [[HalfClass alloc] init];
        [object getHalf:&number];
        NSLog(@"The half of number is: %d\n", number);
    }
    return 0;
}
