//
//  main.m
//  DemoProject
//
//  Created by Julio Pramaitama on 27/04/25.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        unsigned int numberA = 118;    //118 = 1110110
        unsigned int numberB = 85;     //85 = 1010101
        int numberC = 0;
        
        numberC = numberA & numberB;
        NSLog(@"numberA & numberB = %d\n", numberC );  //1010100
        
        numberC = numberA | numberB;
        NSLog(@"numberA | numberB = %d\n", numberC );  //1110111
        
        numberC = numberA ^ numberB;
        NSLog(@"numberA ^ numberB = %d\n", numberC );  //100011
        
        numberC = ~numberA;
        NSLog(@"~numberA = %d\n", numberC );           //-119
        
        numberC = numberA << 2;
        NSLog(@"numberA << 2 = %d\n", numberC );
        
        numberC = numberA >> 2;
        NSLog(@"numberA >> 2 = %d\n", numberC );
    }
    return 0;
}
