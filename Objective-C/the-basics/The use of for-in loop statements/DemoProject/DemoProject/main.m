//
//  main.m
//  DemoProject
//
//  Created by Julio Pramaitama on 27/04/25.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
        NSArray *week = [[NSArray alloc] initWithObjects:@"Sunday", @"Monday", @"Tuesday", @"Wednesday", @"Thursday", @"Friday", @"Saturday", nil];
        
//        for (int i = 0; i < week.count; i++) {
//            NSLog(@"day: %@", week[i]);
//        }
        
//        for (NSString *day in week) {
//            NSLog(  @"day: %@", day);
//        }
        
//        [week enumerateObjectsUsingBlock:^(id obj, NSUInteger idx, BOOL *stop) {
//            NSLog(@"%zi-->%@", idx, obj);
//        }];
        
        NSEnumerator *en = [week objectEnumerator];
        id element;
        int j = 0;
        while (element = [en nextObject]) {
            NSLog(@"%d-->%@", j, element);
            j++;
        }
    }
    return 0;
}
