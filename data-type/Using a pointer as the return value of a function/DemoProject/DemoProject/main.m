//
//  main.m
//  DemoProject
//
//  Created by Julio Pramaitama on 17/08/25.
//

#import <Foundation/Foundation.h>

@interface RandomClass : NSObject

- (int *) getRandomNumbers;

@end

@implementation RandomClass

- (int *) getRandomNumbers
{
    static int random[5];
    int index;
    
    srand((unsigned)time(NULL));
    for (index = 0; index < 5; ++index)
    {
        random[index] = rand();
        NSLog(@"%d\n", random[index]);
    }
    
    return random;
}

@end

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        int *pointer;
        
        RandomClass *object = [[RandomClass alloc] init];
        pointer = [object getRandomNumbers];
        
        for (int index = 0; index < 5; index++)
        {
            NSLog(@"Pointer[%d] = %d\n", index, *(pointer + index));
        }
    }
    return 0;
}
