//
//  RYJMvpStudentCollectionViewCell.m
//  RYJMVCDemo
//
//  Created by RyanYuan on 2019/2/13.
//  Copyright © 2019 RyanYuan. All rights reserved.
//

#import "RYJMvpStudentCollectionViewCell.h"
#import "RYJMvcStudentModel.h"

@interface RYJMvpStudentCollectionViewCell ()

@property (nonatomic, strong) RYJMvcStudentModel *model;

@property (weak, nonatomic) IBOutlet UILabel *nameLabel;
@property (weak, nonatomic) IBOutlet UILabel *ageLabel;
@property (weak, nonatomic) IBOutlet UIButton *nameChangeButton;

@end

@implementation RYJMvpStudentCollectionViewCell

- (void)awakeFromNib {
    [super awakeFromNib];
    // Initialization code
}

// 视图逻辑
- (void)configTextStudentCellWithModel:(RYJMvcStudentModel *)model {
    self.nameLabel.text = model.name;
    self.ageLabel.text = [NSString stringWithFormat:@"%@", @(model.age)];
    self.model = model;
}

- (IBAction)clickNameChangeButton:(UIButton *)sender {
    if ([self.delegate respondsToSelector:@selector(collectionViewCell:clickNameChangeButton:)]) {
        [self.delegate collectionViewCell:self clickNameChangeButton:sender];
    }
}


@end
