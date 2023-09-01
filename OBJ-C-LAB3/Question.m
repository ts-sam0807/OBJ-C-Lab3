//
//  Question.m
//  OBJ-C-LAB3
//
//  Created by Ts SaM on 1/9/2023.
//

#import "Question.h"

@implementation Question
- (instancetype)initWithQuestion:(NSString *)question answer:(NSInteger)answer {
    if (self = [super init]) {
        _question = [question copy];
        _answer = answer;
    }
    return self;
}
@end
