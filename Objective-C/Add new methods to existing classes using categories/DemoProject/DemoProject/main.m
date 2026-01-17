//
//  main.m
//  DemoProject
//
//  Created by Julio Pramaitama on 02/12/25.
//

#import <Foundation/Foundation.h>

@interface NSNumber(MyAdditions)
-(NSNumber *)triple;
@end

@implementation NSNumber(MyAdditions)

-(NSNumber *)triple
{
    double result = [self doubleValue] * 3;
    return [NSNumber numberWithDouble:result];
}

@end

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        NSNumber *number = [NSNumber numberWithDouble:2.5];
        NSNumber *result = number.triple;
        NSLog(@"result.doubleValue = %.1f", result.doubleValue);
    }
    return 0;
}
