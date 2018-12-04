//
//  ShowTableViewCell.m
//  AppleDeveiceInfo
//
//  Created by Tomorrow on 2018/12/4.
//  Copyright © 2018年 Tomorrow. All rights reserved.
//

#import "ShowTableViewCell.h"

@implementation ShowTableViewCell

- (void)awakeFromNib {
    [super awakeFromNib];
    // Initialization code
}
- (void)layoutSubviews {
    self.appDeviceLabel.text = [NSString stringWithFormat:@"%@", self.nameString];
    self.showDeviceLabel.text = [NSString stringWithFormat:@"%@", self.infoString];
}
- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end
