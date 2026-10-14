//
//  main.m
//  DemoProject
//
//  Created by Julio Pramaitama on 18/08/25.
//

#import <Foundation/Foundation.h>

@interface Car:NSObject
{
    NSString *brand;
    NSString *series;
    float price;
}

@property(nonatomic, readwrite) float price;
@property(nonatomic, copy) NSString *series;

- (void) drive;

@end

@implementation Car

@synthesize price;
@synthesize series;

- (id) init
{
    self = [super init];
    brand = @"Mini Cooper";
    series = @"5door";
    
    return self;
}

-(void) drive
{
    NSLog(@"%@-%@, launch...", brand, series);
}

@end

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        Car *mini_cooper1 = [[Car alloc] init];
        Car *mini_cooper2 = [[Car alloc] init];
        
        mini_cooper1.price = 100000.0;
        
        mini_cooper2.series = @"Countryman";
        mini_cooper2.price = 100050.0;
        
        [mini_cooper1 drive];
        [mini_cooper2 drive];
    }
    return 0;
}
