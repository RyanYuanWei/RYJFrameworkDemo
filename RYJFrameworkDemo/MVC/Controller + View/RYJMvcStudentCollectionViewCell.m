//
//  RYJMvcStudentCollectionViewCell.m
//  RYJMVCDemo
//
//  Created by RyanYuan on 2019/2/13.
//  Copyright © 2019 RyanYuan. All rights reserved.
//

#import "RYJMvcStudentCollectionViewCell.h"
#import "RYJMvcStudentModel.h"

@interface RYJMvcStudentCollectionViewCell ()

@property (weak, nonatomic) IBOutlet UILabel *nameLabel;
@property (weak, nonatomic) IBOutlet UILabel *ageLabel;

@end

@implementation RYJMvcStudentCollectionViewCell

- (void)awakeFromNib {
    [super awakeFromNib];
    // Initialization code
}

// 视图逻辑
- (void)configTextStudentCellWithModel:(RYJMvcStudentModel *)model {
    
    self.nameLabel.text = model.name;
    self.ageLabel.text = [NSString stringWithFormat:@"%@", @(model.age)];
}

@end
