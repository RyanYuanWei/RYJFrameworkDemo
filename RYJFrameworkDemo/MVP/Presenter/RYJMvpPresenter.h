//
//  RYJMvpPresenter.h
//  RYJFrameworkDemo
//
//  Created by RyanYuan on 2019/2/14.
//  Copyright © 2019 RyanYuan. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@protocol RYJMvpPresenterDelegate <NSObject>

@optional

/** 刷新UI */
- (void)reloadViews:(NSArray *)dataArr;

@end

@interface RYJMvpPresenter : NSObject

/** 刷新UI代理对象 */
@property (nonatomic, weak) id<RYJMvpPresenterDelegate> delegate;

/** 外部接口, 供控制器调用获取数据 */
- (void)requestDataWithUrl:(NSString *)url params:(NSDictionary *)params;

/** 外部接口, 传递事件 */
- (void)clickNameChangeButton:(id)sender;

@end

NS_ASSUME_NONNULL_END
