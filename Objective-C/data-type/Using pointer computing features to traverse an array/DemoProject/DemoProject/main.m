//
//  main.m
//  DemoProject
//
//  Created by Julio Pramaitama on 10/08/25.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        int numbers[] = {1, 2, 3, 4};
        int index, *pointer;
        
        pointer = numbers;
        for (index = 0; index < 4; index++)
        {
            NSLog(@"The address of pointer[%d] is: %x\n", index, pointer);
            NSLog(@"THe value of pointer[%d] is: %d\n", index, *pointer);
            
            pointer += 1;
        }
        
        pointer -= 1;
        
        while (pointer >= &numbers[0])
        {
            NSLog(@"The address of numbers[%d] is: %x\n", index, pointer);
            NSLog(@"The value of numbers[%d] is: %d\n", index, *pointer);
            
            pointer -= 1;
            index -= 1;
        }
    }
    return 0;
}
