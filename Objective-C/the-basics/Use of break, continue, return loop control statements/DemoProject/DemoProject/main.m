//
//  main.m
//  DemoProject
//
//  Created by Julio Pramaitama on 27/04/25.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
//        for (int i = 0; i < 5; i++) {
//            if (i == 3)
//                break;
//            NSLog(@"i = %d", i);
//        }
        
//        for (int i = 0; i < 5; i++) {
//            if (i == 3)
//                continue;
//            NSLog(@"i = %d", i);
//        }
        
//        for (int i = 0; i < 2; i++) {
//            for (int j = 0; j < 5; j++) {
//                if (j == 3)
//                    return 0;
//                NSLog(@"i = %d, j = %d", i, j);
//            }
//        }
        
        int count = 0;
        while(true) {
            count ++;
            NSLog(@"count = %d", count);
            
            if (count == 3) {
                break;
            }
        }
    
    }
    return 0;
}
