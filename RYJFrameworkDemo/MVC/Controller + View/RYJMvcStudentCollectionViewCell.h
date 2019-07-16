//
//  RYJMvcStudentCollectionViewCell.h
//  RYJMVCDemo
//
//  Created by RyanYuan on 2019/2/13.
//  Copyright © 2019 RyanYuan. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@class RYJMvcStudentModel;

@interface RYJMvcStudentCollectionViewCell : UICollectionViewCell

- (void)configTextStudentCellWithModel:(RYJMvcStudentModel *)model;

@end

NS_ASSUME_NONNULL_END
