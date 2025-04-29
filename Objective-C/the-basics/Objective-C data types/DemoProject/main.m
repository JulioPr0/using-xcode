//
//  main.m
//  DemoProject
//
//  Created by Julio Pramaitama on 20/04/25.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        int result1 = 2 + 2;
        int result2 = 2 - 2;
        int result3 = 2 * 2;
        int result4 = 2 / 2;
        int result5 = 5 % 2;
        
        int starCount = 2;
        starCount ++;
        
        int appleCount = 2;
        appleCount --;
        
        NSLog
        (@"result1:%d\nresult2:%d\nresult3:%d\nresult4:%d\nresult5:%d\nstarCount:%d\nappleCount:%d\n", result1, result2, result3, result4, result5, starCount, appleCount);

    }
    return 0;
}
