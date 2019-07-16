//
//  RYJMvpView.m
//  RYJFrameworkDemo
//
//  Created by RyanYuan on 2019/2/16.
//  Copyright © 2019 RyanYuan. All rights reserved.
//

#import "RYJMvpView.h"
#import "RYJMvpPresenter.h"
#import "RYJMvpStudentCollectionViewCell.h"

static NSString * const reuseIdentifier = @"RYJMvpStudentCollectionViewCell";

@interface RYJMvpView () <UICollectionViewDelegate, UICollectionViewDataSource, RYJMvpStudentCollectionViewCellDelegate>

@property (nonatomic, strong) UICollectionView *collectionView;
@property (nonatomic, strong) NSArray *dataArr;

@end

@implementation RYJMvpView

- (instancetype)initWithFrame:(CGRect)frame {
    self = [super initWithFrame:frame];
    if (self) {
        UICollectionViewFlowLayout *layout = [UICollectionViewFlowLayout new];
        layout.itemSize = CGSizeMake(200, 200);
        layout.minimumLineSpacing = 0;
        layout.minimumInteritemSpacing = 0;
        
        UICollectionView *collectionView = [[UICollectionView alloc] initWithFrame:self.bounds collectionViewLayout:layout];
        collectionView.delegate = self;
        collectionView.dataSource = self;
        [collectionView registerNib:[UINib nibWithNibName:reuseIdentifier bundle:nil] forCellWithReuseIdentifier:reuseIdentifier];
        [self addSubview:collectionView];
        self.collectionView = collectionView;
    }
    return self;
}

- (void)reloadViews:(NSArray *)dataArr {
    self.dataArr = dataArr;
    [self.collectionView reloadData];
}

#pragma mark - UICollectionViewDelegate


#pragma mark - UICollectionViewDataSource

- (NSInteger)numberOfSectionsInCollectionView:(UICollectionView *)collectionView {
    return 1;
}

- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section {
    return self.dataArr.count;
}

- (UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath {
    
    RYJMvpStudentCollectionViewCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:reuseIdentifier forIndexPath:indexPath];
    cell.delegate = self;
    [cell configTextStudentCellWithModel:self.dataArr[indexPath.row]];
    return cell;
}

#pragma mark - RYJMvpStudentCollectionViewCellDelegate

- (void)collectionViewCell:(RYJMvpStudentCollectionViewCell *)cell clickNameChangeButton:(UIButton *)sender {
    [self.delegate view:self clickNameChangeButton:sender];
}

@end
