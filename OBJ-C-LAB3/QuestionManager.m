//
//  QuestionManager.m
//  OBJ-C-LAB3
//
//  Created by Ts SaM on 1/9/2023.
//

#import "QuestionManager.h"
#import "AdditionQuestion.h"
#import "SubtractionQuestion.h"
#import "MultiplicationQuestion.h"
#import "DivisionQuestion.h"

@implementation QuestionManager

- (Question *)generateRandomQuestion {
    NSInteger randomType = arc4random_uniform(4);
    
    switch (randomType) {
        case 0:
            return [[AdditionQuestion alloc] init];
        case 1:
            return [[SubtractionQuestion alloc] init];
        case 2:
            return [[MultiplicationQuestion alloc] init];
        case 3:
            return [[DivisionQuestion alloc] init];
        default:
            return [[AdditionQuestion alloc] init];
    }
}

@end
