//
//  RYJMvvmViewController.m
//  RYJFrameworkDemo
//
//  Created by RyanYuan on 2019/2/22.
//  Copyright © 2019 RyanYuan. All rights reserved.
//

#import "RYJMvvmViewController.h"
#import "RYJMvvmViewModel.h"

@interface RYJMvvmViewController () <RYJMvvmViewModelDelegate>

@property (nonatomic, strong) UICollectionView *collectionView;

/** 持有viewModel */
@property (nonatomic, strong) RYJMvvmViewModel *viewModel;

@end

@implementation RYJMvvmViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    // 初始化视图
    UICollectionViewFlowLayout *layout = [UICollectionViewFlowLayout new];
    layout.itemSize = CGSizeMake(200, 200);
    layout.minimumLineSpacing = 0;
    layout.minimumInteritemSpacing = 0;
    
    UICollectionView *collectionView = [[UICollectionView alloc] initWithFrame:self.view.bounds collectionViewLayout:layout];
    collectionView.delegate = self.viewModel;
    collectionView.dataSource = self.viewModel;
    [collectionView registerNib:[UINib nibWithNibName:@"RYJMvvmStudentCollectionViewCell" bundle:nil] forCellWithReuseIdentifier:@"RYJMvvmStudentCollectionViewCell"];
    [self.view addSubview:collectionView];
    self.collectionView = collectionView;
    
    // 发起请求
    [self.viewModel requestDataWithUrl:@"" params:@{}];
}

#pragma mark - RYJMvvmViewModelDelegate

- (void)reloadViews:(NSArray *)dataArr {
    [self.collectionView reloadData];
}

#pragma mark - setter & getter

- (RYJMvvmViewModel *)viewModel {
    if (!_viewModel) {
        _viewModel = [RYJMvvmViewModel new];
        _viewModel.delegate = self;
    }
    return _viewModel;
}

@end
