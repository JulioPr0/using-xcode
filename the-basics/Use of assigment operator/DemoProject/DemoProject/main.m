//
//  main.m
//  DemoProject
//
//  Created by Julio Pramaitama on 27/04/25.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        int appleCount = 10;
        appleCount += 2;           //12
        appleCount -= 2;           //10
        appleCount *= 2;           //20
        appleCount /= 2;           //10
        appleCount %= 4;           //2
        appleCount <<= 2;          //8
        appleCount >>= 2;          //2
        appleCount &= 2;           //2
        appleCount ^= 2;           //0
        appleCount |= 2;           //2
        
        int number1 = 9;
        int number2 = 10;
        int bigger = number1 > number2 ? number1 : number2;
        NSLog(@"bigger = %d", bigger);
    }
    return 0;
}
