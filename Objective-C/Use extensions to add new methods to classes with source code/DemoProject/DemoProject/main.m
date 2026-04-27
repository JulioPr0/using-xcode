//
//  main.m
//  DemoProject
//
//  Created by Julio Pramaitama on 09/03/26.
//

#import <Foundation/Foundation.h>

@interface MathClass : NSObject
+(int)getDouble:(int)number;
@end

@interface MathClass()
+(int)getTriple:(int)number;
@end

@implementation MathClass
+(int)getDouble:(int)number
{
    return number * 2;
}

+(int)getTriple:(int)number
{
    return number * 3;
}
@end

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        int result1 = [MathClass getDouble:1];
        int result2 = [MathClass getTriple:1];
        
        NSLog(@"result1 = %d", result1);
        NSLog(@"result2 = %d", result2);
    }
    return EXIT_SUCCESS;
}
