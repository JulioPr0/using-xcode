//
//  main.m
//  DemoProject
//
//  Created by Julio Pramaitama on 13/09/25.
//

#import <Foundation/Foundation.h>

@interface Animal : NSObject
{
    NSString *name;
}

- (id)initWithName:(NSString *)animalName;
- (void)moveTo:(NSString *)destination;
@end

@implementation Animal

- (id)initWithName:(NSString *)animalName
{
    name = animalName;
    return self;
}

- (void)moveTo:(NSString *)destination
{
    NSLog(@"%@ moves to %@", name, destination);
}
@end

@interface Tiger : Animal

- (void)moveTo:(NSString *)destination;

@end

@implementation Tiger

- (void)moveTo:(NSString *)destination
{
    NSLog(@"%@ jumps to %@", name, destination);
}

@end

@interface Bird : Animal

- (void)moveTo:(NSString *)destination;

@end

@implementation Bird

- (void)moveTo:(NSString *)destination
{
    NSLog(@"%@ files to %@", name, destination);
}

@end

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        Tiger *tiger = [[Tiger alloc] initWithName:@"Coll"];
        [tiger moveTo:@"the cave."];
        
        Bird *bird = [[Bird alloc] initWithName:@"Dovv"];
        [bird moveTo:@"the nest."];
    }
    return 0;
}
