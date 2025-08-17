//
//  main.m
//  DemoProject
//
//  Created by Julio Pramaitama on 17/05/25.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        NSDate *currentDate = [NSDate date];
        NSLog(@"currentDate = %@", currentDate);
        
        NSDate *secondDate = [NSDate dateWithTimeInterval:3600 sinceDate:currentDate];
        NSLog(@"secondDate = %@", secondDate);
        
        NSDate *thirdDate = [NSDate dateWithTimeIntervalSinceNow:-3600];
        NSLog(@"thirdDate = %@", thirdDate);
        
        NSLog(@"timeIntervalSince1970 = %f", [currentDate timeIntervalSince1970]);
        NSLog(@"timeIntervalSinceDate = %f", [currentDate timeIntervalSinceDate:thirdDate]);
        NSLog(@"timeIntervalSinceNow = %f", [secondDate timeIntervalSinceNow]);
        
        NSLog(@"isEqualToDate = %d", [currentDate isEqualToDate:secondDate]);
        NSLog(@"isEqualToDate = %d", [currentDate isEqualToDate:currentDate]);
        
        NSLog(@"isGreaterThan = %d", [currentDate isGreaterThan:secondDate]);
        NSLog(@"isLessThanOrEqualTo = %d", [currentDate isLessThanOrEqualTo:secondDate]);
        
        NSComparisonResult comparison1 = [currentDate compare:secondDate];
        NSLog(@"result = %1d", (long)comparison1);
        
        NSComparisonResult comparison2 = [currentDate compare:currentDate];
        NSLog(@"result = %1d", (long)comparison2);
        
        NSComparisonResult comparison3 = [currentDate compare:thirdDate];
        NSLog(@"result = %1d", (long)comparison3);
        
        NSDateFormatter *formatter = [[NSDateFormatter alloc] init];
        [formatter setDateStyle:NSDateFormatterFullStyle];
        [formatter setTimeStyle:NSDateFormatterMediumStyle];
        [formatter setLocale:[[NSLocale alloc]
                              initWithLocaleIdentifier:@"zh-CN"]];
        
        NSString *currentDateString = [formatter stringFromDate:currentDate];
        NSLog(@"%@", currentDateString);
        
        NSDateFormatter *formatter2 = [[NSDateFormatter alloc] init];
        [formatter2 setDateFormat:@"yyyy-MM-dd HH:mm:ss"];
        
        NSDate *date = [NSDate date];
        NSLog(@"Date string: %@", [formatter2 stringFromDate:date]);
        
        NSString *dateString = @"2021-07-26 12:21:20";
        NSDateFormatter *formatter3 = [[NSDateFormatter alloc] init];
        [formatter3 setDateFormat:@"yyyy-MM-dd HH:mm:ss"];
        NSDate *convertedDate = [formatter3 dateFromString:dateString];
        NSLog(@"convertedDate = %@", convertedDate);
    }
    return 0;
}
