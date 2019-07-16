//
//  RYJMvcStudentModel.h
//  RYJMVCDemo
//
//  Created by RyanYuan on 2019/2/13.
//  Copyright © 2019 RyanYuan. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface RYJMvcStudentModel : NSObject

@property (nonatomic, strong) NSString *name;
@property (nonatomic, assign) NSInteger age;

- (RYJMvcStudentModel *)initWithName:(NSString *)name age:(NSInteger)age;

@end

NS_ASSUME_NONNULL_END
