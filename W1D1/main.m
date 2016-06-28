//
//  main.m
//  W1D1
//
//  Created by thomas minshull on 2016-06-27.
//  Copyright © 2016 thomas minshull. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // take in input
        char inputChars[255];
        char choiceChars[255];
        
        NSString *choice = @"";
        
        while (![choice isEqualToString:@"7"]) {
            printf("Input a string:");
            fgets(inputChars, 255, stdin);
            
            NSString *inputString = [[NSString stringWithUTF8String:inputChars] stringByTrimmingCharactersInSet: [NSCharacterSet whitespaceAndNewlineCharacterSet]];
            
            if ([inputString hasSuffix:@"!"]) {
                NSLog(@"I don't know");
            } else if ([inputString hasSuffix:@"?"]) {
                NSLog(@"Whoa, calm, down!");
            } else {
                printf("What should I do with this string?");
                printf("Type:\n\t1\tto make uppercase");
                printf("\t2\tto make lowercase");
                printf("\t3\tto Numbersize");
                printf("\t4\tto Canadianize");
                printf("\t5\tto switch \"-\"'s for \" \"'s");
                
                fgets(choiceChars, 255, stdin);
                
                NSString *choice = [[NSString stringWithUTF8String:choiceChars] stringByTrimmingCharactersInSet: [NSCharacterSet whitespaceAndNewlineCharacterSet]];
                
                
            }
            

            
        }
        
        printf("Input a string:");
        
        fgets(inputChars, 255, stdin);
        
        printf("Your string is %s\n", inputChars);
        
        NSString *inputString = [[NSString stringWithUTF8String:inputChars] stringByTrimmingCharactersInSet: [NSCharacterSet whitespaceAndNewlineCharacterSet]];
        
        NSLog(@"Input was: %@", inputString);
        
        NSLog(@"The current memory address of the inputString is %p", inputString);
        
        // get input from user what which task do they want completed, use if statement to run just that task
        
        //upper case
        
        NSString *upperCase = [inputString uppercaseString];
        
        NSLog(@"upperCase is: %@", upperCase);
        
        NSLog(@"The current memory address of upperCase is %p", upperCase);
        
        //lower case
        
        NSString *lowerCase = [inputString lowercaseString];
        
        NSLog(@"lowerCase is: %@", lowerCase);
        
        NSLog(@"The current memory address of lowerCase is %p", lowerCase);
        
        //Numberize

        // check if the input string is 0
        if ([[inputString stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceCharacterSet]] isEqualToString:@"0"]) {
            NSLog(@"The numberical equivalent of inputString is: %f", 0.0);
        } else {
            // check if not a number
            float numberize = [inputString floatValue];
            
            if (numberize != 0) {
                NSLog(@"The numberical equivalent of inputString is: %f", numberize);
            } else {
                NSLog(@"inputString is not a number");
            }
        }
        
        
        // Canadianize
        
        NSString *canadianize = [inputString stringByAppendingString:@", eh?"];
        
        NSLog(@"canadianize is: %@", canadianize);
        
        NSLog(@"The current memory address of canadianize is %p", canadianize);
        
//        // Respond
//        
//        if ([inputString hasSuffix:@"!"]) {
//            NSLog(@"I don't know");
//        }
//        
//        if ([inputString hasSuffix:@"?"]) {
//            NSLog(@"Whoa, calm, down!");
//        }
        
        // De_Space_it
        
        NSString *deSpaceIt = [inputString stringByReplacingOccurrencesOfString:@" " withString:@"-"];
        
        NSLog(@"deSpaceIt is: %@", deSpaceIt);
        
        NSLog(@"The current memory address of deSpaceIT is %p", deSpaceIt);
    }
    return 0;
}
