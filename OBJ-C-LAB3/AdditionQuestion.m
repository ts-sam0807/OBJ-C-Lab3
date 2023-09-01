//
//  AdditionQuestion.m
//  OBJ-C-LAB3
//
//  Created by Ts SaM on 1/9/2023.
//

#import "AdditionQuestion.h"

@implementation AdditionQuestion

- (instancetype)init {
    NSInteger leftOperand = arc4random_uniform(91) + 10;
    NSInteger rightOperand = arc4random_uniform(91) + 10;
    NSString *question = [NSString stringWithFormat:@"%ld + %ld ?", (long)leftOperand, (long)rightOperand];
    NSInteger answer = leftOperand + rightOperand;
    return [super initWithQuestion:question answer:answer];
}

@end
