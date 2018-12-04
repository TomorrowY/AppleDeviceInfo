//
//  ShowTableViewCell.h
//  AppleDeveiceInfo
//
//  Created by Tomorrow on 2018/12/4.
//  Copyright © 2018年 Tomorrow. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ShowTableViewCell : UITableViewCell

@property (nonatomic, copy) NSString *nameString;
@property (nonatomic, copy) NSString *infoString;

@property (weak, nonatomic) IBOutlet UILabel *appDeviceLabel;

@property (weak, nonatomic) IBOutlet UILabel *showDeviceLabel;
@end
