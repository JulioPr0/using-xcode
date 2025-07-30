//
//  main.m
//  DemoProject
//
//  Created by Julio Pramaitama on 11/05/25.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        NSNumber *boolNumber = [NSNumber numberWithBool:YES];
        NSNumber *charNumber = [NSNumber numberWithChar: 'A'];
        NSNumber *intNumber = [NSNumber numberWithInt:1];
        NSNumber *floatNumber = [NSNumber numberWithFloat:2.718];
        NSNumber *doubleNumber = [NSNumber numberWithDouble:3.14];
        
        BOOL boolValue = [boolNumber boolValue];
        char charValue = [charNumber charValue];
        int intValue = [intNumber intValue];
        float floatValue = [floatNumber floatValue];
        double doubleValue = [doubleNumber doubleValue];
        
        NSLog
        (@"boolValue:%d\ncharValue:%c\nintValue:%d\nfloatValue%f\ndoubleValue:%f\n", boolValue, charValue, intValue, floatValue, doubleValue);
    }
    return 0;
}
