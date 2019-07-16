//
//  RYJMvpView.h
//  RYJFrameworkDemo
//
//  Created by RyanYuan on 2019/2/16.
//  Copyright © 2019 RyanYuan. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@class RYJMvpView;

@protocol RYJMvpViewDelegate <NSObject>

- (void)view:(RYJMvpView *)view clickNameChangeButton:(UIButton *)sender;

@end

@interface RYJMvpView : UIView

@property (nonatomic, weak) id<RYJMvpViewDelegate> delegate;

- (void)reloadViews:(NSArray *)dataArr;

@end

NS_ASSUME_NONNULL_END
