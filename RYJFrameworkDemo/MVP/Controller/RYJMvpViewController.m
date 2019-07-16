//
//  RYJMvpViewController.m
//  RYJFrameworkDemo
//
//  Created by RyanYuan on 2019/2/16.
//  Copyright © 2019 RyanYuan. All rights reserved.
//

#import "RYJMvpViewController.h"
#import "RYJMvpPresenter.h"
#import "RYJMvpView.h"

@interface RYJMvpViewController () <RYJMvpPresenterDelegate, RYJMvpViewDelegate>

@property (nonatomic, strong) RYJMvpPresenter *presenter;
@property (nonatomic, strong) RYJMvpView *mainSubviews;

@end

@implementation RYJMvpViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self.view addSubview:self.mainSubviews];
    [self.presenter requestDataWithUrl:@"" params:@{}];
}


#pragma mark - RYJMvpPresenterDelegate

- (void)reloadViews:(NSArray *)dataArr {
    [self.mainSubviews reloadViews:dataArr];
}

#pragma mark - RYJMvpViewDelegate

- (void)view:(RYJMvpView *)view clickNameChangeButton:(UIButton *)sender {
    [self.presenter clickNameChangeButton:sender];
}

#pragma mark - setter & getter

- (RYJMvpView *)mainSubviews {
    if (!_mainSubviews) {
        _mainSubviews = [[RYJMvpView alloc] initWithFrame:self.view.bounds];
        _mainSubviews.delegate = self;
    }
    return _mainSubviews;
}

- (RYJMvpPresenter *)presenter {
    if (!_presenter) {
        _presenter = [RYJMvpPresenter new];
        _presenter.delegate = self;
    }
    return _presenter;
}


@end
