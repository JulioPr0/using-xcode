//
//  main.m
//  DemoProject
//
//  Created by Julio Pramaitama on 17/08/25.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        int number = 10;
        int *pointerOfNumber;
        int **pointerOfPointer;
        
        pointerOfNumber = &number;
        pointerOfPointer = &pointerOfNumber;
        
        NSLog(@"Address stored in pointerOfNumber: %x\n", pointerOfNumber);
        NSLog(@"Address stored in pointerOfPointer: %x\n", pointerOfPointer);
        
        NSLog(@"The value of number is: %d\n", number);
        NSLog(@"The value available at *pointerOfNumber is: %d\n", *pointerOfNumber );
        NSLog(@"The value available at **pointerOfPointer is: %d\n", **pointerOfPointer);
    }
    return 0;
}
