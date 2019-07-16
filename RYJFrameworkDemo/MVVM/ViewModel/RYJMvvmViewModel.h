//
//  RYJMvvmViewModel.h
//  RYJFrameworkDemo
//
//  Created by RyanYuan on 2019/2/22.
//  Copyright © 2019 RyanYuan. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@protocol RYJMvvmViewModelDelegate <NSObject>

@optional

/** 绑定事件，刷新UI */
- (void)reloadViews:(NSArray *)dataArr;

@end

/** 独立的UIKit中介类 */
@interface RYJMvvmViewModel : NSObject <UICollectionViewDelegate, UICollectionViewDataSource>

/** 刷新UI代理对象 */
@property (nonatomic, weak) id<RYJMvvmViewModelDelegate> delegate;

/** 外部接口, 供控制器调用获取数据 */
- (void)requestDataWithUrl:(NSString *)url params:(NSDictionary *)params;

@end

NS_ASSUME_NONNULL_END
