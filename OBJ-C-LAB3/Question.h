//
//  Question.h
//  OBJ-C-LAB3
//
//  Created by Ts SaM on 1/9/2023.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface Question : NSObject

@property (nonatomic, strong) NSString *question;
@property (nonatomic, assign) NSInteger answer;

- (instancetype)initWithQuestion:(NSString *)question answer:(NSInteger)answer;

@end

NS_ASSUME_NONNULL_END
