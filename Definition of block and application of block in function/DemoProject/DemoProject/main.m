//
//  main.m
//  DemoProject
//
//  Created by Julio Pramaitama on 23/08/25.
//

#import <Foundation/Foundation.h>

void (^firstBlock)(void) = ^{
    NSLog(@"This is the first block.");
};

int (^getBigger)(int, int) = ^(int number1, int number2)
{
    int result = (number1 > number2) ? number1 : number2;
    NSLog(@"result = %d", result);
    return result;
};

typedef void (^ResponseBlock)(NSString *response);
@interface RequestAPIClass : NSObject
- (void)requestAPIWithBlock:(NSString *)url andBlock:(ResponseBlock)completionBlock;
@end

@implementation RequestAPIClass

- (void)requestAPIWithBlock:(NSString *)url andBlock:(ResponseBlock)completionBlock
{
    NSLog(@"Request %@...", url);
    
    NSString *response = @"A list of swift.";
    completionBlock(response);
}
@end

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        firstBlock();
        getBigger(1, 2);
        
        RequestAPIClass *request = [[RequestAPIClass alloc] init];
        [request requestAPIWithBlock:@"https://www.websitejulio.com" andBlock:^(NSString *response) {
            NSLog(@"Response form server: %@", response);
        }];
    }
    return 0;
}
