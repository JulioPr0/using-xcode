//
//  main.m
//  DemoProject
//
//  Created by Julio Pramaitama on 13/06/25.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        NSMutableArray *fruit = [[NSMutableArray alloc] init];
        
        [fruit addObject:@"Apple"];
        [fruit addObjectsFromArray:@[@"Banana", @"Pear"]];
        NSLog(@"fruit = %@", fruit);
        
        [fruit insertObject:@"Orange" atIndex:2];
        NSLog(@"fruit = %@", fruit);
        
        NSMutableArray *fruit2 = [NSMutableArray arrayWithArray:fruit];
        
        [fruit replaceObjectAtIndex:2 withObject:@"Grape"];
        NSLog(@"fruit = %@", fruit);
        
        [fruit removeObject:@"Grape"];
        NSLog(@"fruit = %@", fruit);
        
        [fruit removeObjectAtIndex:1];
        NSLog(@"fruit = %@", fruit);
        
        [fruit removeAllObjects];
        NSLog(@"fruit = %@", fruit);
        
        [fruit2 removeObjectsInArray:@[@"Banana", @"Watermelon"]];
        NSLog(@"fruit2 = %@", fruit2);
        
        [fruit2 exchangeObjectAtIndex:0 withObjectAtIndex:1];
        NSLog(@"fruit2 = %@", fruit2);
    }
    return 0;
}
