//
//  MultiplicationQuestion.m
//  OBJ-C-LAB3
//
//  Created by Ts SaM on 1/9/2023.
//

#import "MultiplicationQuestion.h"

@implementation MultiplicationQuestion

- (instancetype)init {
    NSInteger leftOperand = arc4random_uniform(10) + 1;
    NSInteger rightOperand = arc4random_uniform(10) + 1;
    NSString *question = [NSString stringWithFormat:@"%ld * %ld ?", (long)leftOperand, (long)rightOperand];
    NSInteger answer = leftOperand * rightOperand;
    return [super initWithQuestion:question answer:answer];
}

@end
