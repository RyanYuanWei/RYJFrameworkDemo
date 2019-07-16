//
//  RYJMvpStudentModel.h
//  RYJFrameworkDemo
//
//  Created by RyanYuan on 2019/2/14.
//  Copyright © 2019 RyanYuan. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface RYJMvpStudentModel : NSObject

@property (nonatomic, strong) NSString *name;
@property (nonatomic, assign) NSInteger age;

- (RYJMvpStudentModel *)initWithName:(NSString *)name age:(NSInteger)age;

@end

NS_ASSUME_NONNULL_END
