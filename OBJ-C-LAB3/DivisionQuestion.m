//
//  DivisionQuestion.m
//  OBJ-C-LAB3
//
//  Created by Ts SaM on 1/9/2023.
//

#import "DivisionQuestion.h"

@implementation DivisionQuestion

- (instancetype)init {
    NSInteger rightOperand = arc4random_uniform(10) + 1;
    NSInteger answer = arc4random_uniform(10) + 1;
    NSInteger leftOperand = rightOperand * answer;
    NSString *question = [NSString stringWithFormat:@"%ld / %ld ?", (long)leftOperand, (long)rightOperand];
    return [super initWithQuestion:question answer:answer];
}

@end
