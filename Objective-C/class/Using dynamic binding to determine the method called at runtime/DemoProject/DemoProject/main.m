//
//  main.m
//  DemoProject
//
//  Created by Julio Pramaitama on 02/12/25.
//

#import <Foundation/Foundation.h>

@interface Tiger : NSObject

- (void)moveTo:(NSString *)destination;

@end

@implementation Tiger

- (void)moveTo:(NSString *)destination
{
    NSLog(@"A Tiger jumps to %@", destination);
}

@end

@interface Bird : NSObject

- (void)moveTo:(NSString *)destination;

@end

@implementation Bird

- (void)moveTo:(NSString *)destination
{
    NSLog(@"A bird flies to %@", destination);
}

@end

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        Tiger *tiger = [[Tiger alloc] init];
        Bird *bird = [[Bird alloc] init];
        
        NSArray *animalArray = [[NSArray alloc] initWithObjects: tiger, bird, nil];
        
        id animal1 = [animalArray objectAtIndex:0];
        [animal1 moveTo:@"it's home."];
        
        id animal2 = [animalArray objectAtIndex:1];
        [animal2 moveTo:@"it's home."];
        
    }
    return 0;
}
