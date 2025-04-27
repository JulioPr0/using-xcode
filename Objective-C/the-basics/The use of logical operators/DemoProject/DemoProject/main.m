//
//  main.m
//  DemoProject
//
//  Created by Julio Pramaitama on 26/04/25.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        BOOL isFinished = NO;
        BOOL isPassed = YES;
        
        BOOL result1 = isFinished && isPassed;
        BOOL result2 = isFinished || isPassed;
        BOOL result3 = !isFinished;
        BOOL result4 = !isPassed;
        
        NSLog(@"result1: %d\nresult2: %d\nresult3: %d\nresult4: %d", result1, result2, result3, result4);
    }
    return 0;
}
