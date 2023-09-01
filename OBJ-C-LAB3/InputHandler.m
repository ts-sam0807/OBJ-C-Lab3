//
//  InputHandler.m
//  OBJ-C-LAB3
//
//  Created by Ts SaM on 1/9/2023.
//

#import "InputHandler.h"

@implementation InputHandler

+ (NSString *)getUserInput {
    char input[255];
    fgets(input, 255, stdin);
    NSString *inputString = [NSString stringWithCString:input encoding:NSUTF8StringEncoding];
    return [inputString stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceAndNewlineCharacterSet]];
}

@end
