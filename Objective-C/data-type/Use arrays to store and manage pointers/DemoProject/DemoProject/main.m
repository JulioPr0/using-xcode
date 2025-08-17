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
        int index, *pointers[4];
        
        for (index = 0;index < 4; index++)
        {
            pointers[index] = &numbers[index];
        }
        
        while (index > 0)
        {
            index --;
            NSLog(@"The address of pointers[%d] = %x\n", index, pointers[index]);
            NSLog(@"The value of numbers[%d] = %d\n", index, *pointers[index]);
        }
        
        char *languages[] = {"Objective-C", "Swift", "Python", "Java"};
        int index2 = 0;
        for (index2 = 0; index2 < 4; index2++)
        {
            NSLog(@"The value of languages[%d] = %s\n", index2, languages[index2]);
        }
    }
    return 0;
}
