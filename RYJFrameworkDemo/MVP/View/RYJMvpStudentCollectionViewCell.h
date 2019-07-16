//
//  RYJMvpStudentCollectionViewCell.h
//  RYJMVCDemo
//
//  Created by RyanYuan on 2019/2/13.
//  Copyright © 2019 RyanYuan. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@class RYJMvcStudentModel;
@class RYJMvpStudentCollectionViewCell;

@protocol RYJMvpStudentCollectionViewCellDelegate <NSObject>

- (void)collectionViewCell:(RYJMvpStudentCollectionViewCell *)cell clickNameChangeButton:(UIButton *)sender;

@end

@interface RYJMvpStudentCollectionViewCell : UICollectionViewCell

@property (nonatomic, weak) id<RYJMvpStudentCollectionViewCellDelegate> delegate;

- (void)configTextStudentCellWithModel:(RYJMvcStudentModel *)model;

@end

NS_ASSUME_NONNULL_END
