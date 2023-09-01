//
//  ScoreKeeper.m
//  OBJ-C-LAB3
//
//  Created by Ts SaM on 1/9/2023.
//

#import "ScoreKeeper.h"

@implementation ScoreKeeper

- (instancetype)init {
    if (self = [super init]) {
        _correctCount = 0;
        _wrongCount = 0;
    }
    return self;
}

- (NSString *)scoreString {
    NSInteger total = self.correctCount + self.wrongCount;
    if (total == 0) {
        return @"No questions answered.";
    }
    NSInteger percentage = (self.correctCount * 100) / total;
    return [NSString stringWithFormat:@"score: %ld right, %ld wrong ---- %ld%%", (long)self.correctCount, (long)self.wrongCount, (long)percentage];
}

@end
