//
//  main.m
//  DemoProject
//
//  Created by Julio Pramaitama on 30/07/25.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        char *charPointer;
        int *wintPointer;
        float *floatPointer;
        double *doublePointer;
        
        int starCount = 10;
        NSLog(@"Address of starCount: %x\n", &starCount);
        
        int *starCountPointer;
        starCountPointer = &starCount;
        NSLog(@"Address stored in starCountPointer: %x\n", starCountPointer);
        
        NSLog(@"Value of *starCountPointer: %d\n", *starCountPointer );
        
        int *nullPointer = NULL;
        NSLog(@"The value of nullPointer is : %x\n", nullPointer);
        
        if(nullPointer)
        {
            NSLog(@"nullPointer is not NULL.");
        }
        
        if(starCountPointer)
        {
            NSLog(@"starCountPointer is not NULL.");
        }
    }
    return 0;
}
