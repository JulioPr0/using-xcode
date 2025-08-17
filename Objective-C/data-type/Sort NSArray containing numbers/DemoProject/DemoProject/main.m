//
//  main.m
//  DemoProject
//
//  Created by Julio Pramaitama on 13/06/25.
//

#import <Foundation/Foundation.h>

NSInteger sortInt(id num1, id num2, void *context)
{
    int number1 = [num1 intValue];
    int number2 = [num2 intValue];
    
    if (*(BOOL *)context == YES)
    {
        if (number1 > number2)
        {
            return NSOrderedDescending;
        }
        else if (number1 < number2)
        {
            return NSOrderedAscending;
        }
        else
        {
            return NSOrderedSame;
        }
    }
    else
    {
        if (number1 < number2)
        {
            return NSOrderedDescending;
        }
        else if (number1 > number2)
        {
            return NSOrderedAscending;
        }
        else
        {
            return NSOrderedSame;
        }
    }
}

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        NSArray *numbers = @[@4, @6, @8, @1, @15, @7, @9];
        BOOL orderedAscending = YES;
        
        NSArray *sortedNumbers = [numbers sortedArrayUsingFunction:sortInt context:&orderedAscending];
        NSLog(@"sortedNumbers = %@", sortedNumbers);
    }
    return 0;
}
