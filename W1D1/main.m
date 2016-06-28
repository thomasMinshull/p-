//
//  main.m
//  W1D1
//
//  Created by thomas minshull on 2016-06-27.
//  Copyright © 2016 thomas minshull. All rights reserved.
//

#import <Foundation/Foundation.h>

void upperCase(NSString *inputString) {
    //upper case
    
    NSString *upperCase = [inputString uppercaseString];
    
    NSLog(@"upperCase is: %@", upperCase);
    
    NSLog(@"The current memory address of upperCase is %p", upperCase);
}

void lowerCase(NSString *inputString) {
    //lower case
    
    NSString *lowerCase = [inputString lowercaseString];
    
    NSLog(@"lowerCase is: %@", lowerCase);
    
    NSLog(@"The current memory address of lowerCase is %p", lowerCase);
}

void Numberize(NSString *inputString) {
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
}

void canadianize(NSString *inputString) {
    // Canadianize
    
    NSString *canadianize = [inputString stringByAppendingString:@", eh?"];
    
    NSLog(@"canadianize is: %@", canadianize);
    
    NSLog(@"The current memory address of canadianize is %p", canadianize);
}

void deSpace(NSString *inputString) {
    // De_Space_it
    
    NSString *deSpaceIt = [inputString stringByReplacingOccurrencesOfString:@" " withString:@"-"];
    
    NSLog(@"deSpaceIt is: %@", deSpaceIt);
    
    NSLog(@"The current memory address of deSpaceIT is %p", deSpaceIt);
}

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // take in input
        char inputChars[255];
        char choiceChars[255];
        
        NSString *choice = @"";
        
        while (![choice isEqualToString:@"6"]) {
            printf("Input a string:");
            fgets(inputChars, 255, stdin);
            
            NSString *inputString = [[NSString stringWithUTF8String:inputChars] stringByTrimmingCharactersInSet: [NSCharacterSet whitespaceAndNewlineCharacterSet]];
            
            NSLog(@"Input was: %@", inputString);
            
            NSLog(@"The current memory address of the inputString is %p", inputString);
            
            if ([inputString hasSuffix:@"!"]) {
                NSLog(@"I don't know");
            } else if ([inputString hasSuffix:@"?"]) {
                NSLog(@"Whoa, calm, down!");
            } else {
                printf("What should I do with this string?\n");
                printf("Type:\n\t1\tto make uppercase\n");
                printf("\t2\tto make lowercase\n");
                printf("\t3\tto Numbersize\n");
                printf("\t4\tto Canadianize\n");
                printf("\t5\tto switch \"-\"'s for \" \"'s\n");
                printf("\t6\tto exit\n");
                
                fgets(choiceChars, 255, stdin);
                
                NSString *choice = [[NSString stringWithUTF8String:choiceChars] stringByTrimmingCharactersInSet: [NSCharacterSet whitespaceAndNewlineCharacterSet]];
                
                int choiceInt = (int)[choice integerValue];
                
                switch (choiceInt) {
                    case 1:
                        upperCase(inputString);
                        break;
                        
                    case 2:
                        lowerCase(inputString);
                        break;
                    case 3:
                        Numberize(inputString);
                        break;
                    case 4:
                        canadianize(inputString);
                        break;
                    case 5:
                        deSpace(inputString);
                        break;
                    default:
                        NSLog(@"That wasn't a valid response, let's start over...");
                        break;
                }
            }
        }
    }
    return 0;
}
