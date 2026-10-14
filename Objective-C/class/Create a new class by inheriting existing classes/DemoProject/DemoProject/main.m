//
//  main.m
//  DemoProject
//
//  Created by Julio Pramaitama on 23/08/25.
//

#import <Foundation/Foundation.h>

@interface Animal : NSObject
{
    NSString *name;
}

- (id)initWithName:(NSString *) name;
- (void)say;

@end

@implementation Animal

- (id)initWithName:(NSString *) animalName
{
    name = animalName;
    return self;
}
- (void)say
{
    NSLog(@"I am %@", name);
}
@end

@interface Tiger : Animal
{
    float weight;
}

- (id)initWithName:(NSString *)animalName andWeight:(float)animalWeight;
- (void)hunt;

@end

@implementation Tiger

- (id)initWithName:(NSString *)animalName andWeight:(float)animalWeight
{
    name = animalName;
    weight = animalWeight;
    return self;
}

- (void)hunt
{
    NSLog(@"%@ whose weight is %.1f is hunting", name, weight);
}

@end

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        Animal *animal = [[Animal alloc] initWithName:@"Brain"];
        [animal say];
        
        Tiger *tiger = [[Tiger alloc] initWithName:@"Woll" andWeight:99.3];
        [tiger say];
        [tiger hunt];
    }
    return 0;
}
