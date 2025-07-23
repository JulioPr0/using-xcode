//
//  main.m
//  DemoProject
//
//  Created by Julio Pramaitama on 23/07/25.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        NSSet* animal = [NSSet setWithObjects:@"Cat", @"Dog", @"Horse", @"Cat", @"Elephant", @"Dog", nil];
        NSLog(@"animal = %@", animal);
        
        NSLog(@"anyObject = %@", [animal anyObject]);
        
        NSUInteger count = animal.count;
        NSLog(@"count = %lu", (unsigned long)count);
        
        NSLog(@"containsObject = %d", [animal containsObject:@"Dog"]);
        
        NSSet *animal2 = [animal setByAddingObject:@"Tiger"];
        NSLog(@"isSubsetOfSet = %d", [animal isSubsetOfSet:animal2]);
        
        NSEnumerator *enumerator = [animal objectEnumerator];
        NSString *element;
        while (element = [enumerator nextObject])
        {
            NSLog(@"element = %@", element);
        }
        
        NSMutableSet *set1 = [[NSMutableSet alloc]
                              initWithObjects:@"one", @"two", @"three", nil];
        NSMutableSet *set2 = [[NSMutableSet alloc]
                              initWithObjects:@"two", @"three", @"four", nil];
        
        [set1 unionSet:set2];
        NSLog(@"set1 = %@", set1);
        
        [set1 intersectSet:set2];
        NSLog(@"set1 = %@", set1);
        
        [set2 minusSet:set1];
        NSLog(@"set2 = %@", set2);
        
        [set1 removeObject:@"two"];
        NSLog(@"set1 = %@", set1);
        
        [set1 removeAllObjects];
        NSLog(@"set1 = %@", set1);
        
        NSMutableArray *array = [NSMutableArray arrayWithObjects:@"John", @"Peter", @"Jason", @"Kitty", @"Peter", @"John", nil];
        NSSet *set = [[NSSet alloc] initWithArray:array];
        array = [NSMutableArray arrayWithArray:[set allObjects]];
        NSLog(@"array = %@", array);
    }
    
    return 0;
}
