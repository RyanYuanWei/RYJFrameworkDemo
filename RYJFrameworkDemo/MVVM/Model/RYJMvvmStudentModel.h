//
//  RYJMvvmStudentModel.h
//  RYJFrameworkDemo
//
//  Created by RyanYuan on 2019/2/22.
//  Copyright © 2019 RyanYuan. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface RYJMvvmStudentModel : NSObject

@property (nonatomic, strong) NSString *name;
@property (nonatomic, assign) NSInteger age;

- (RYJMvvmStudentModel *)initWithName:(NSString *)name age:(NSInteger)age;

@end

NS_ASSUME_NONNULL_END
