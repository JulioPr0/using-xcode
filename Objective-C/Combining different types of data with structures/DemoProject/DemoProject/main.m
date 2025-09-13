//
//  main.m
//  DemoProject
//
//  Created by Julio Pramaitama on 18/08/25.
//

#import <Foundation/Foundation.h>

struct Animal
{
    NSString *name;
    int age;
    float weight;
};

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        struct Animal wolf;
        struct Animal tiger;
        
        wolf.name = @"Kane";
        wolf.age = 3;
        wolf.weight = 61.8;
        
        tiger.name = @"Will";
        tiger.age = 4;
        tiger.weight = 96.8;
        
        NSLog(@"wolf.name = %@", wolf.name);
        NSLog(@"wolf.age = %d", wolf.age);
        NSLog(@"wolf.weight = %.1f", wolf.weight);
        
        NSLog(@"tiger.name = %@", tiger.name);
        NSLog(@"tiger.age = %d", tiger.age);
        NSLog(@"tiger.weight = %.1f", tiger.weight);
    }
    return 0;
}
