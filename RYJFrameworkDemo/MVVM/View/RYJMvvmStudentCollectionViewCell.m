//
//  RYJMvvmStudentCollectionViewCell.m
//  RYJFrameworkDemo
//
//  Created by RyanYuan on 2019/2/22.
//  Copyright © 2019 RyanYuan. All rights reserved.
//

#import "RYJMvvmStudentCollectionViewCell.h"

@interface RYJMvvmStudentCollectionViewCell ()

@end

@implementation RYJMvvmStudentCollectionViewCell

- (void)awakeFromNib {
    [super awakeFromNib];
    // Initialization code
}

- (IBAction)clickNameChangeButton:(UIButton *)sender {
    if ([self.delegate respondsToSelector:@selector(collectionViewCell:clickNameChangeButton:)]) {
        [self.delegate collectionViewCell:self clickNameChangeButton:sender];
    }
}

@end
