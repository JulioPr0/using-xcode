//
//  main.m
//  DemoProject
//
//  Created by Julio Pramaitama on 06/06/25.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        double distance[5];
        
        BOOL arrayBOOL[] = {YES, NO, YES, NO, YES};
        int arrayInt[] = {32, 28, 29, 35, 30};
        char arrayChar[] = {'a', 'b', 'c', 'd', 'e'};
        float arrayFloat[] = {1.5, 2.6, 3.5, 4.0, 6.8};
        
        int array[5][5] = {{1, 2, 3, 4, 5}, {6, 7, 8, 9, 0}};
        
        int arrayInt1 = arrayInt[1];
        NSLog(@"arrayInt[0] = %d", arrayInt1);
        
        arrayInt[1] = 31;
        NSLog(@"arrayInt[1] = %d", arrayInt[1]);
        
        int array2_1 = array[1][0];
        NSLog(@"array2_1 = %d", array2_1);
        
        array[1][0] = 12;
        NSLog(@"array2_1 = %d", array[1][0]);
        
        for (int i = 0; i <= 5; i++)
        {
            NSLog(@"arrayFloat[%d] = %.1f", i, arrayFloat[i]);
        }
        
        for (int i = 0; i < 2; i++)
        {
            for (int j = 0; j < 5; j++)
            {
                NSLog(@"array[%d][%d] = %d", i, j, array[i][j]);
            }
        }
    }
    return 0;
}
