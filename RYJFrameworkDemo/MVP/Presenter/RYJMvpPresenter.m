//
//  RYJMvpPresenter.m
//  RYJFrameworkDemo
//
//  Created by RyanYuan on 2019/2/14.
//  Copyright © 2019 RyanYuan. All rights reserved.
//

#import "RYJMvpPresenter.h"
#import "RYJMvpStudentModel.h"
#import "RYJMvpView.h"

@interface RYJMvpPresenter ()

/** Model数组 */
@property (nonatomic, strong) NSMutableArray *dataArr;

@end

@implementation RYJMvpPresenter

- (void)requestDataWithUrl:(NSString *)url params:(NSDictionary *)params {
    
    // mock网络请求
    RYJMvpStudentModel *student = [[RYJMvpStudentModel alloc] initWithName:@"A" age:10];
    NSMutableArray *dataArr = @[].mutableCopy;
    [dataArr addObject:student];
    self.dataArr = dataArr;
    
    if ([self.delegate respondsToSelector:@selector(reloadViews:)]) {
        [self.delegate reloadViews:self.dataArr];
    }
}

- (void)clickNameChangeButton:(UIButton *)sender {
    
    // model修改逻辑
    RYJMvpStudentModel *student = self.dataArr[0];
    NSInteger nameAscIntValue = [student.name characterAtIndex:0];
    NSInteger newNameAscIntValue = (nameAscIntValue + 1) > 'Z' ? 'A' : (nameAscIntValue + 1);
    student.name = [NSString stringWithFormat:@"%c", (char)newNameAscIntValue];
    
    // 刷新UI
    if ([self.delegate respondsToSelector:@selector(reloadViews:)]) {
        [self.delegate reloadViews:self.dataArr];
    }
}

@end
