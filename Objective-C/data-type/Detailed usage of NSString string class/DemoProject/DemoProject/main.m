//
//  main.m
//  DemoProject
//
//  Created by Julio Pramaitama on 11/05/25.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        NSString *greeting = @"Hello";
        NSLog(@"sayHello = %@\n", greeting);
        
        NSString *language = @"Objective-C";
        NSString *sayHello = [[NSString alloc] initWithFormat:@"Hello, %@!", language];
        NSLog(@"sayHello = %@\n", sayHello);
        
        int starCount = 10;
        NSString *tip = [[NSString alloc] initWithFormat:@"You got %d stars", starCount];
        NSLog(@"tip = %@\n", tip);
        
        NSLog(@"tip.lowercaseString = %@\n", [tip lowercaseString]);
        NSLog(@"tip.capitalizedString = %@\n", [tip capitalizedString]);
        
        NSLog(@"tip.hasPrefix = %d\n", [tip hasPrefix:@"You"]);
        NSLog(@"tip.hasSuffix = %d\n", [tip hasSuffix:@"You"]);
        NSLog(@"containString = %d\n", [tip containsString:@"star"]);
        
        NSLog(@"tip.length = %lu\n", (unsigned long)[tip length]);
        
        NSString *score = @"80";
        NSLog(@"score = %d\n", [score intValue]);
        
        NSString *locationX = @"10.2";
        NSLog(@"locationX = %f\n", [locationX floatValue]);
        
        NSLog(@"tip is equal to you got 10 stars = %d\n", [tip isEqualToString:@"You got 10 stars"]);
        
        NSRange range = [tip rangeOfString:@"star"];
        NSLog(@"range.location = %lu\n", (unsigned long)range.location);
        NSLog(@"range.length = %lu\n", (unsigned long)range.length);
        
        NSLog(@"tip.characterAtIndex.2 = %c\n", [tip characterAtIndex:2]);
        NSLog(@"tip.substringFromIndex.8 = %@\n", [tip substringFromIndex:8]);
        NSLog(@"tip.substringToIndex.8 = %@\n", [tip substringToIndex:3]);
        
        NSRange tipRange = NSMakeRange(4, 3);
        NSLog(@"tip.substringWithRange = %@\n", [tip substringWithRange:tipRange]);
        
        NSString *replacedString = [tip stringByReplacingOccurrencesOfString:@"stars" withString:@"apples"];
        NSLog(@"replacedString = %@\n", replacedString);
        
        NSString *greetingSwift = [greeting stringByAppendingString:@"Swift!"];
        NSLog(@"greetingSwift = %@\n", greetingSwift);
        
        NSString *string = @"---Interactive Tutorials---";
        NSLog(@"String = %@", string);
        
        NSCharacterSet *characterset = [NSCharacterSet punctuationCharacterSet];
        string = [string stringByTrimmingCharactersInSet:characterset];
        NSLog(@"Final String = %@", string);
        
//        greeting += @"nice to meet you";
        NSMutableString *mutableString = [NSMutableString stringWithCapacity:40];
        NSMutableString *mutableString2 = [[NSMutableString alloc] initWithString:@"This is"];
        
        [mutableString2 appendString:@" NSMutableString."];
        [mutableString2 insertString:@"a " atIndex:8];
        NSLog(@"mutableString2 = %@\n", mutableString2);
        
        [mutableString2 deleteCharactersInRange:NSMakeRange(0, 10)];
        NSLog(@"mutableString2.deleteCharactersInRange = %@\n", mutableString2);
        
        [mutableString2 setString:@"Clear."];
        NSLog(@"mutableString2 = %@\n", mutableString2);

    }
    return 0;
}
