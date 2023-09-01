//
//  QuestionManager.h
//  OBJ-C-LAB3
//
//  Created by Ts SaM on 1/9/2023.
//

#import <Foundation/Foundation.h>
#import "Question.h"

NS_ASSUME_NONNULL_BEGIN

@interface QuestionManager : NSObject

- (Question *)generateRandomQuestion;

@end

NS_ASSUME_NONNULL_END
