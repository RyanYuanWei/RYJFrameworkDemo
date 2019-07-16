//
//  RYJMvcCollectionViewController.m
//  RYJMVCDemo
//
//  Created by RyanYuan on 2019/2/13.
//  Copyright © 2019 RyanYuan. All rights reserved.
//

#import "RYJMvcCollectionViewController.h"
#import "RYJMvcStudentCollectionViewCell.h"
#import "RYJMvcStudentModel.h"

@interface RYJMvcCollectionViewController ()

@property (nonatomic, strong) NSMutableArray<RYJMvcStudentModel *> *dataArr;

@end

@implementation RYJMvcCollectionViewController

static NSString * const reuseIdentifier = @"RYJMvcStudentCollectionViewCell";

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self initializeView];
    [self requestData];
}

// 视图逻辑
- (void)initializeView {
    
    UICollectionViewFlowLayout *layout = (id)self.collectionViewLayout;
    if ([layout isKindOfClass:[UICollectionViewFlowLayout class]]) {
        layout.itemSize = CGSizeMake(200, 200);
        layout.minimumLineSpacing = 0;
        layout.minimumInteritemSpacing = 0;
    }
    
    [self.collectionView registerNib:[UINib nibWithNibName:reuseIdentifier bundle:nil] forCellWithReuseIdentifier:reuseIdentifier];
}

// 网络请求
- (void)requestData {
    RYJMvcStudentModel *student = [[RYJMvcStudentModel alloc] initWithName:@"A" age:10];
    NSMutableArray *dataArr = @[].mutableCopy;
    [dataArr addObject:student];
    self.dataArr = dataArr;
}

// 视图逻辑
#pragma mark <UICollectionViewDataSource>

- (NSInteger)numberOfSectionsInCollectionView:(UICollectionView *)collectionView {
    return 1;
}


- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section {
    return self.dataArr.count;
}

- (UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath {
    
    // Cell(一个View)跟一个Model直接绑定了！所以MVC准则被违反了，但是这种情况总是发生，通常人们不会觉得它是错误的。如果你严格遵循MVC，那么你应该从Controller配置cell，而不是将Model传递到cell中，这将增大Controller。
    RYJMvcStudentCollectionViewCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:reuseIdentifier forIndexPath:indexPath];
    
    // Configure the cell
    [cell configTextStudentCellWithModel:self.dataArr[indexPath.row]];
    
    return cell;
}

#pragma mark <UICollectionViewDelegate>

/*
// Uncomment this method to specify if the specified item should be highlighted during tracking
- (BOOL)collectionView:(UICollectionView *)collectionView shouldHighlightItemAtIndexPath:(NSIndexPath *)indexPath {
	return YES;
}
*/

/*
// Uncomment this method to specify if the specified item should be selected
- (BOOL)collectionView:(UICollectionView *)collectionView shouldSelectItemAtIndexPath:(NSIndexPath *)indexPath {
    return YES;
}
*/

/*
// Uncomment these methods to specify if an action menu should be displayed for the specified item, and react to actions performed on the item
- (BOOL)collectionView:(UICollectionView *)collectionView shouldShowMenuForItemAtIndexPath:(NSIndexPath *)indexPath {
	return NO;
}

- (BOOL)collectionView:(UICollectionView *)collectionView canPerformAction:(SEL)action forItemAtIndexPath:(NSIndexPath *)indexPath withSender:(id)sender {
	return NO;
}

- (void)collectionView:(UICollectionView *)collectionView performAction:(SEL)action forItemAtIndexPath:(NSIndexPath *)indexPath withSender:(id)sender {
	
}
*/

@end
