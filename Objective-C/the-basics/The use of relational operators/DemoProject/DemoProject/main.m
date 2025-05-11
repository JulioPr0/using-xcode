//
//  main.m
//  DemoProject
//
//  Created by Julio Pramaitama on 25/04/25.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        int appleCount = 8;
        int pearCount = 9;
        BOOL result1 = (appleCount == pearCount);
        BOOL result2 = (appleCount != pearCount);
        BOOL result3 = (appleCount > pearCount);
        BOOL result4 = (appleCount < pearCount);
        BOOL result5 = (appleCount >= pearCount);
        BOOL result6 = (appleCount <= pearCount);
        
        NSLog
        (@"result1:%d\nresult2:%d\nresult3:%d\nresult4:%d\nresult5:%d\nresult6:%d\n, result1, result2, result3, result4, result5, result6");
    }
    return 0;
}
