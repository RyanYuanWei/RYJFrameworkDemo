//
//  RYJMvpStudentModel.m
//  RYJFrameworkDemo
//
//  Created by RyanYuan on 2019/2/14.
//  Copyright © 2019 RyanYuan. All rights reserved.
//

#import "RYJMvpStudentModel.h"

@implementation RYJMvpStudentModel

- (RYJMvpStudentModel *)initWithName:(NSString *)name age:(NSInteger)age {
    self = [super init];
    if (self) {
        _name = name;
        _age = age;
    }
    return self;
}

@end
