//
//  RYJMvvmStudentModel.m
//  RYJFrameworkDemo
//
//  Created by RyanYuan on 2019/2/22.
//  Copyright © 2019 RyanYuan. All rights reserved.
//

#import "RYJMvvmStudentModel.h"

@implementation RYJMvvmStudentModel

- (RYJMvvmStudentModel *)initWithName:(NSString *)name age:(NSInteger)age {
    self = [super init];
    if (self) {
        _name = name;
        _age = age;
    }
    return self;
}

@end
