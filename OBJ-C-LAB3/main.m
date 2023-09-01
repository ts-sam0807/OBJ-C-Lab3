//
//  main.m
//  OBJ-C-LAB3
//
//  Created by Ts SaM on 1/9/2023.
//

#import <Foundation/Foundation.h>
#import "Question.h"
#import "AdditionQuestion.h"
#import "SubtractionQuestion.h"
#import "QuestionManager.h"
#import "InputHandler.h"
#import "ScoreKeeper.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        BOOL gameOn = YES;
        ScoreKeeper *scoreKeeper = [[ScoreKeeper alloc] init];
        QuestionManager *questionManager = [[QuestionManager alloc] init];
        
        NSDate *startTime = [NSDate date];
        
        while (gameOn) {
            Question *question = [questionManager generateRandomQuestion];
            NSLog(@"%@", question.question);
            
            NSString *userInput = [InputHandler getUserInput];
            if ([userInput isEqualToString:@"quit"]) {
                gameOn = NO;
                continue;
            }
            
            NSInteger userAnswer = [userInput intValue];
            if (userAnswer == question.answer) {
                NSLog(@"Right!");
                scoreKeeper.correctCount++;
            } else {
                NSLog(@"Wrong!");
                scoreKeeper.wrongCount++;
            }
            
            NSLog(@"%@", [scoreKeeper scoreString]);
            
            NSDate *endTime = [NSDate date];
            NSTimeInterval totalTime = [endTime timeIntervalSinceDate:startTime];
            
            NSInteger totalQuestions = scoreKeeper.correctCount + scoreKeeper.wrongCount;
            NSTimeInterval averageTime = totalTime / totalQuestions;
            NSLog(@"Total time: %.0f s, average time: %.0f s", totalTime, averageTime);
        }
    }
    return 0;
}
