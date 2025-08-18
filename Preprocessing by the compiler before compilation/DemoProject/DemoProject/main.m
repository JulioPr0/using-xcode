//
//  main.m
//  DemoProject
//
//  Created by Julio Pramaitama on 17/08/25.
//

#import <Foundation/Foundation.h>
#include "Header.h"

#define MATH_PI 3.1415

#undef BASE_URL
#define BASE_URL @"https://www.websitejulio.com/"

#ifndef BASE_URL
    #define BASE_URL @"https://www.websitejulio.com/"
#endif

#define title_for(courseA, courseB) \
NSLog(@"Interface Tutorials for " #courseA " and " #courseB)

#define tokenPaster(t) NSLog(@"myToken" #t " = %d", myToken##t)

#define getBigger(numberA, numberB) ((numberA) > (numberB) ? (numberA) : (numberB))

#if DEBUG == 0
    #define DebugLog(...)
#elif DEBUG == 1
    #define DebugLog(...) NSLog(__VA_ARGS__)
#endif

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        title_for(Xcode, Objective-C);
        
        int myToken2 = 10;
        tokenPaster(2);
        NSLog(@"myToken2 = %d", myToken2);
        
        NSLog(@"The bigger one is %d\n", getBigger(123, 132));
        
        DebugLog(@"~~~DebugLog~~~" );
        NSLog(@"~~~NSLog~~~" );
        
        DebugLog(@"File path:%s\n", __FILE__ );
        DebugLog(@"Line number :%d\n", __LINE__ );
        DebugLog(@"System date :%s\n", __DATE__ );
        DebugLog(@"System time :%s\n", __TIME__ );
    }
    return 0;
}
