//
//  main.m
//  DemoProject
//
//  Created by Julio Pramaitama on 27/04/25.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        NSArray *animal = @[@"Cat", @"Dog", @"Sheep", @"Horse"];
        NSArray *fruit = @[@"Apple", @"Banana", @"Grape", @"Orange"];
        NSArray *compositeArray = @[animal, fruit];
        
//        for (int i = 0; i < compositeArray.count; i++)
//        {
//            NSArray *subArray = compositeArray[i];
//            
//            for (int j = 0; j < subArray.count; j++)
//            {
//                NSString *element = subArray[j];
//                NSLog(@"element = %@", element);
//            }
//        }
        
        int i = 0;
        while (i < compositeArray.count) {
            NSArray *subArray = compositeArray[i];
            
            int j = 0;
            while (j < subArray.count) {
                NSString *element = subArray[j];
                NSLog(@"element = %@", element);
                j ++;
            }
            i ++;
        }
    }
    return 0;
}
