//
//  main.m
//  DemoProject
//
//  Created by Julio Pramaitama on 27/04/25.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        int appleCount = 0;
        
//        while (appleCount < 0) {
//            appleCount++;
//            NSLog(@"appleCount = %d\n", appleCount);
//        }
        
        int pearCount = 0;
        do
        {
            pearCount = pearCount + 1;
            NSLog(@"pearCount = %d\n", pearCount);
        } while (pearCount < 0);
    }
    return 0;
}
