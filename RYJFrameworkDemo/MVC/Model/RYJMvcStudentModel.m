//
//  RYJMvcStudentModel.m
//  RYJMVCDemo
//
//  Created by RyanYuan on 2019/2/13.
//  Copyright © 2019 RyanYuan. All rights reserved.
//

#import "RYJMvcStudentModel.h"

@implementation RYJMvcStudentModel

- (RYJMvcStudentModel *)initWithName:(NSString *)name age:(NSInteger)age {
    self = [super init];
    if (self) {
        _name = name;
        _age = age;
    }
    return self;
}

@end
