//
//  RYJMvvmStudentCollectionViewCell.h
//  RYJFrameworkDemo
//
//  Created by RyanYuan on 2019/2/22.
//  Copyright © 2019 RyanYuan. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@class RYJMvvmStudentCollectionViewCell;

@protocol RYJMvvmStudentCollectionViewCellDelegate <NSObject>

- (void)collectionViewCell:(RYJMvvmStudentCollectionViewCell *)cell clickNameChangeButton:(UIButton *)sender;

@end

@interface RYJMvvmStudentCollectionViewCell : UICollectionViewCell

@property (weak, nonatomic) IBOutlet UILabel *nameLabel;
@property (weak, nonatomic) IBOutlet UILabel *ageLabel;
@property (weak, nonatomic) IBOutlet UIButton *nameChangeButton;

@property (nonatomic, weak) id<RYJMvvmStudentCollectionViewCellDelegate> delegate;

@end

NS_ASSUME_NONNULL_END
