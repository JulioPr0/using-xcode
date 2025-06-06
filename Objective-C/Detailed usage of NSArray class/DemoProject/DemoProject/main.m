//
//  main.m
//  DemoProject
//
//  Created by Julio Pramaitama on 06/06/25.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        NSArray *array = [[NSArray alloc] initWithObjects:@"Apple", @"Banana", @"Pear", nil];
        NSArray *fruit1 = [NSArray arrayWithObjects:@"Apple", @"Banana", @"Pear", nil];
        
        NSArray *fruit2 = [[NSArray alloc] initWithArray:fruit1];
        NSArray *fruit3 = [NSArray arrayWithArray:fruit1];
        NSArray *fruit4 = [fruit1 arrayByAddingObject:@"Orange"];
        NSLog(@"fruit4 = %@", fruit4);
        
        NSRange range = NSMakeRange(1, 2);
        NSArray *fruit5 = [fruit4 subarrayWithRange:range];
        NSLog(@"fruit5 = %@", fruit5);
        
        NSArray *fruit = @[@"Apple", @"Banana", @"Pear"];
        NSLog(@"count = %1d", [fruit count]);
        NSLog(@"objectAtIndex_1 = %@", [fruit objectAtIndex:1]);
        NSLog(@"firstsObject = %@", [fruit firstObject]);
        NSLog(@"lastObject = %@", [fruit lastObject]);
        
        NSLog(@"containsObject_Pear = %d", [fruit containsObject:@"Pear"]);
        NSLog(@"indexOfObject_Apple = %1d", [fruit indexOfObject:@"Apple"]);
        
        for (int i = 0; i < [fruit count]; i++)
        {
            NSLog(@"Index[%d] = %@", i, fruit[i]);
        }
        
        for (NSString *element in fruit)
        {
            NSLog(@"element = %@", element);
        }
        
        NSEnumerator *e = [fruit objectEnumerator];
        id enumerator;
        while (enumerator = [e nextObject])
        {
            NSLog(@"enumerator = %@", enumerator);
        }
        
        [fruit enumerateObjectsUsingBlock:^(id str, NSUInteger index, BOOL * te) {
            NSLog(@"%@, %lu", str, (unsigned long) index);
        }];
        
        [fruit enumerateObjectsWithOptions:NSEnumerationReverse usingBlock:^(id str, NSUInteger index, BOOL * te) {
            NSLog(@"%@, %lu", str, (unsigned long) index);
        }];
        
        NSString *animalString = @"Cat, Dog, Horse, Tiger";
        NSArray *animal = [animalString componentsSeparatedByString:@","];
        NSLog(@"animal = %@", animal);
        
        NSString *animalString2 = [animal componentsJoinedByString:@" > "];
        NSLog(@"animalString2 = %@", animalString2);
    }
    return 0;
}
