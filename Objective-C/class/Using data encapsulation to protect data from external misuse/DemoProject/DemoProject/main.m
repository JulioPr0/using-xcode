//
//  main.m
//  DemoProject
//
//  Created by Julio Pramaitama on 02/12/25.
//

#import <Foundation/Foundation.h>

@interface Banker : NSObject
{
    int totalSavingsDeposits;
}

- (id) initWithNumber:(int) number;
- (void) addNumber:(int) number;
- (void) subtractNumber:(int) number;

- (NSString *) getTotalSavingsDeposits:(NSString *)password;

@end

@implementation Banker

- (id) initWithNumber:(int)number
{
    totalSavingsDeposits = number;
    return self;
}

- (void) addNumber:(int)number
{
    totalSavingsDeposits += number;
}

- (void) subtractNumber:(int)number
{
    totalSavingsDeposits -= number;
}

- (NSString *)getTotalSavingsDeposits:(NSString *)password
{
    if([password isEqualToString:@"123456"])
        return [NSString stringWithFormat:@"%d", totalSavingsDeposits];
    else
        return @"You do not have permission to query";
}

@end

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        Banker *banker = [[Banker alloc] initWithNumber:0];
        [banker addNumber:10];
        [banker subtractNumber:6];

        NSString *queryResult1 = [banker getTotalSavingsDeposits:@"111111"];
        NSString *queryResult2 = [banker getTotalSavingsDeposits:@"123456"];
        
        NSLog(@"queryResult1 = %@", queryResult1);
        NSLog(@"queryResult2 = %@", queryResult2);
    }
    return 0;
}
