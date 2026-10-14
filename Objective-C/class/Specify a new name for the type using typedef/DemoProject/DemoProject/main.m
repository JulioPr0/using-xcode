//
//  main.m
//  DemoProject
//
//  Created by Julio Pramaitama on 18/08/25.
//

#import <Foundation/Foundation.h>

typedef unsigned int UI;

typedef struct AnimalOfZoo
{
    NSString *name;
    int age;
    float weight;
} Animal;

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        UI number1 = 1;
        NSLog(@"number1 = %d", number1);
        
        Animal animal;
        animal.name = @"Elephant";
        animal.age = 4;
        animal.weight = 103.8;
        
        NSLog(@"animal.name = %@", animal.name);
        NSLog(@"animal.age = %d", animal.age);
        NSLog(@"animal.weight = %.1f", animal.weight);
    }
    return 0;
}
