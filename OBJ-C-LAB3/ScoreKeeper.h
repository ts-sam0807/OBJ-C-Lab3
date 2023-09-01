//
//  ScoreKeeper.h
//  OBJ-C-LAB3
//
//  Created by Ts SaM on 1/9/2023.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface ScoreKeeper : NSObject

@property (nonatomic, assign) NSInteger correctCount;
@property (nonatomic, assign) NSInteger wrongCount;

- (NSString *)scoreString;

@end

NS_ASSUME_NONNULL_END
