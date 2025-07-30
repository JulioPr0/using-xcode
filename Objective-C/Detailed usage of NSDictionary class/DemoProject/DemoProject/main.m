//
//  main.m
//  DemoProject
//
//  Created by Julio Pramaitama on 30/06/25.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        NSDictionary *cat = [NSDictionary dictionaryWithObject:@"Kitty"
                                                        forKey: @"name"];
        
        NSDictionary *dog = [NSDictionary dictionaryWithObjectsAndKeys:
                             @"Teddy", @"name",
                             @"2", @"age",
                             @"10", @"weight", nil];
        
        NSArray *objects = [NSArray arrayWithObjects:@"Peter", @"Swimming", @"Tiger", nil];
        NSArray *keys = [NSArray arrayWithObjects:@"Name", @"Hobby", @"Pet", nil];
        NSDictionary *master = [NSDictionary dictionaryWithObjects:objects forKeys:keys];
        NSLog(@"master = %@", master);
        
        NSArray *allKeys = [master allKeys];
        NSLog(@"allKeys = %@", allKeys);
        
        NSArray *allValues = [master allValues];
        NSLog(@"allValues = %@", allValues);
        
        unsigned long count = [master count];
        NSLog(@"count = %lu", count);
        
        NSString *name = [master objectForKey:@"Name"];
        NSLog(@"name = %@", name);
        
        NSString *hobby = [master valueForKey:@"Hobby"];
        NSLog(@"hobby = %@", hobby);
        
        for (id key in master)
        {
            NSLog(@"maseter.%@ = %@", key, [master objectForKey:key]);
        }
        
        NSEnumerator *enumerator = [master keyEnumerator];
        id key = [enumerator nextObject];
        
        while (key)
        {
            NSLog(@"enumerator: maseter.%@ = %@", key, [master objectForKey:key]);
            key = [enumerator nextObject];
        }
        
        [master enumerateKeysAndObjectsUsingBlock:^(id key, id obj, BOOL *stop) {
            NSLog(@"master.%@ = %@", key, obj);
        }];
        
        NSMutableDictionary *book = [NSMutableDictionary dictionaryWithObject:@"iOS development Tutorials" forKey:@"Title"];
        [book setValue:@"Sandra Cisneros" forKey:@"Author"];
        [book setValue:@"Bantam USA; Deluxe edition" forKey:@"Publisher"];
        [book setValue:@"Interactive tutorials for iOS Dev" forKey:@"Description"];
        NSLog(@"book = %@", book);
        
        [book removeObjectsForKeys:@[@"Author", @"Title"]];
        NSLog(@"book = %@", book);
        
        [book removeAllObjects];
        NSLog(@"book = %@", book);
    }
    return 0;
}
