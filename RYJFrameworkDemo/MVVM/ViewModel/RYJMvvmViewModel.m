//
//  RYJMvvmViewModel.m
//  RYJFrameworkDemo
//
//  Created by RyanYuan on 2019/2/22.
//  Copyright © 2019 RyanYuan. All rights reserved.
//

#import "RYJMvvmViewModel.h"
#import "RYJMvvmStudentModel.h"
#import "RYJMvvmStudentCollectionViewCell.h"

static NSString * const reuseIdentifier = @"RYJMvvmStudentCollectionViewCell";

@interface RYJMvvmViewModel () <RYJMvvmStudentCollectionViewCellDelegate>

/** model数组，持有并更新 */
@property (nonatomic, strong) NSMutableArray *dataArr;

@end

@implementation RYJMvvmViewModel

- (void)requestDataWithUrl:(NSString *)url params:(NSDictionary *)params {
    
    // mock网络请求
    RYJMvvmStudentModel *student = [[RYJMvvmStudentModel alloc] initWithName:@"A" age:10];
    NSMutableArray *dataArr = @[].mutableCopy;
    [dataArr addObject:student];
    self.dataArr = dataArr;
    
    // model改变时通知刷新UI
    if ([self.delegate respondsToSelector:@selector(reloadViews:)]) {
        [self.delegate reloadViews:self.dataArr];
    }
}

#pragma mark - UICollectionViewDataSource

- (NSInteger)numberOfSectionsInCollectionView:(UICollectionView *)collectionView {
    return 1;
}

- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section {
    return self.dataArr.count;
}

- (UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath {
    
    RYJMvvmStudentModel *model = self.dataArr[indexPath.row];
    
    RYJMvvmStudentCollectionViewCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:reuseIdentifier forIndexPath:indexPath];
    cell.delegate = self;
    cell.nameLabel.text = model.name;
    cell.ageLabel.text = [NSString stringWithFormat:@"%@", @(model.age)];
    return cell;
}

#pragma mark - RYJMvvmStudentCollectionViewCellDelegate

- (void)collectionViewCell:(RYJMvvmStudentCollectionViewCell *)cell clickNameChangeButton:(UIButton *)sender {
    
    // 持有并更新model
    RYJMvvmStudentModel *student = self.dataArr[0];
    NSInteger nameAscIntValue = [student.name characterAtIndex:0];
    NSInteger newNameAscIntValue = (nameAscIntValue + 1) > 'Z' ? 'A' : (nameAscIntValue + 1);
    student.name = [NSString stringWithFormat:@"%c", (char)newNameAscIntValue];
    
    // model改变时通知刷新UI
    if ([self.delegate respondsToSelector:@selector(reloadViews:)]) {
        [self.delegate reloadViews:self.dataArr];
    }
}

@end
