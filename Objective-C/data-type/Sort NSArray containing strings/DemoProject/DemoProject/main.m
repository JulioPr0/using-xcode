//
//  main.m
//  DemoProject
//
//  Created by Julio Pramaitama on 30/06/25.
//

#import <Foundation/Foundation.h>

NSInteger sortString(id str1, id str2, void *context)
{
    if (*(BOOL *)context == YES)
    {
        return [str2 localizedCaseInsensitiveCompare:str1];
    }
    
    return [str1 localizedCaseInsensitiveCompare:str2];
}

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        NSArray *companies = @[@"Microsoft", @"Facebook", @"Apple", @"IBM", @"Twitter"];
        BOOL orderedDescending = YES;
        
        NSArray *sortedCompanies = [companies
                                    sortedArrayUsingFunction:sortString context:&orderedDescending];
        NSLog(@"sortedCompanies = %@", sortedCompanies);

    }
    return 0;
}
