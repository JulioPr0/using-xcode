//
//  main.m
//  DemoProject
//
//  Created by Julio Pramaitama on 27/04/25.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        int ACTScore = 35;
        
//        if(ACTScore > 30) {
//            NSLog (@"You passed!");
//        }
        
        int SATScore = 1520;
//        if (SATScore > 1400) {
//            NSLog (@"You passed!");
//        } else {
//            NSLog (@"You failed!");
//        }
        
//        if (SATScore > 1500) {
//            NSLog (@"You are admitted by BINUS University");
//        } else if (SATScore > 1400 && SATScore <= 1500) {
//            NSLog (@"You are admitted by UMN University");
//        } else if (SATScore > 1120 && SATScore <= 1400) {
//            NSLog (@"You are admitted by New York University");
//        } else {
//            NSLog (@"Don't give up");
//        }
        
        if (ACTScore > 34) {
            if (SATScore > 1500) {
                NSLog(@"You are the king of glory");
            }
        }
    }
    return 0;
}
