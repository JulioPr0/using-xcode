//
//  main.m
//  DemoProject
//
//  Created by Julio Pramaitama on 01/04/25.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        char characterA = 'A';
        unsigned char characterB = 'B';
        signed char characterC = 'C';
        
        int temperature = -32768;
        unsigned int age = 65535;
        
        short distanceX = -32768;
        unsigned short appleCount = 65535;
        
        long distanceY = -2147483648;
        unsigned long startCount = 2147483642;
        
        float pi = 3.14159265;
        double dpi = 1.7E+308;
        long double greatNumber = 1.1E+4932;
        
        NSLog(@"Storage size for char : %d\n", sizeof(char));
        NSLog(@"Storage size for int : %d \n", sizeof(int));
        NSLog(@"Storage size for double : %d \n", sizeof(double));
    }
    return 0;
}
