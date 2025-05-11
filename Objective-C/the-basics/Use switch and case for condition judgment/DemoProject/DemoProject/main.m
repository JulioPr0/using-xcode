//
//  main.m
//  DemoProject
//
//  Created by Julio Pramaitama on 27/04/25.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        int score = 4;
        switch (score) {
            case 5:
                NSLog (@"Perfect");
                break;
            case 4:
                NSLog (@"Good job!");
                break;
            case 3:
                NSLog (@"You passed!");
                break;
            case 2:
                NSLog (@"Try again please");
                break;
            case 1:
                NSLog (@"Try again please");
                break;
            default:
                NSLog(@"Invalid score");
        }
    }
    return 0;
}
