//
//  ViewController.m
//  AppleDeveiceInfo
//
//  Created by Tomorrow on 2018/12/4.
//  Copyright © 2018年 Tomorrow. All rights reserved.
//

#import "ViewController.h"
#import "DeveceInformation.h"
#import "ShowTableViewCell.h"

@interface ViewController () <UITableViewDelegate, UITableViewDataSource>
@property (nonatomic,strong) UITableView *tableView;
@property (nonatomic, strong) NSArray *infoArray;
@property (nonatomic, strong) NSArray *nameArray;


@end

static NSString *tableViewCellID = @"ShowTableViewCellID";

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.title = @"设备信息";
    [self.view addSubview:self.tableView];
}

#pragma mark - UITableViewDataSource
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return self.infoArray.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    ShowTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:tableViewCellID forIndexPath:indexPath];
    cell.nameString = self.nameArray[indexPath.row];
    cell.infoString = self.infoArray[indexPath.row];
    return cell;
}

#pragma mark - UITableViewDelegate
- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    [tableView deselectRowAtIndexPath:indexPath animated:YES];
}

#pragma mark - LazyLoading
- (UITableView *)tableView {
    if (!_tableView) {
        _tableView = [[UITableView alloc] initWithFrame:self.view.frame style:UITableViewStylePlain];
        _tableView.delegate = self;
        _tableView.dataSource = self;
        _tableView.showsVerticalScrollIndicator = NO;
        _tableView.rowHeight = 60;
        _tableView.separatorStyle = UITableViewCellSeparatorStyleNone;
        
        [_tableView registerNib:[UINib nibWithNibName:@"ShowTableViewCell" bundle:nil] forCellReuseIdentifier:tableViewCellID];
    }
    return _tableView;
}

- (NSArray *)infoArray {
    if (!_infoArray) {
        _infoArray = [NSArray arrayWithObjects:
                      @([DeveceInformation getDeviceScreenWidth]),
                      @([DeveceInformation getDeviceScreenHeight]),
                      [DeveceInformation getDeviceName],
                      [DeveceInformation getiPhoneName],
                      [DeveceInformation getAPPVerion],
                      @([DeveceInformation getBatteryLevel]),
                      [DeveceInformation getSystemName],
                      [DeveceInformation getSystemVersion],
                      [DeveceInformation getUUID],
                      [DeveceInformation getDeviceIPAdress],
                      @([DeveceInformation getTotalMemorySize]),
                      @([DeveceInformation getAvailableMemorySize]),
                      @([DeveceInformation getCurrentBatteryLevel]),
                      [DeveceInformation getBatteryState],
                      [DeveceInformation getDeviceLanguage], nil];
    }
    return _infoArray;
}

- (NSArray *)nameArray {
    if (!_nameArray) {
        _nameArray = [NSArray arrayWithObjects:
                      @"屏幕宽度",
                      @"屏幕高度",
                      @"设备版本号",
                      @"iPhone名称",
                      @"app版本号",
                      @"电池电量",
                      @"当前系统名称",
                      @"当前系统版本号",
                      @"识别码UUID",
                      @"当前设备IP",
                      @"总内存大小",
                      @"当前可用内存",
                      @"精准电池电量",
                      @"电池当前的状态",
                      @"当前语言", nil];
    }
    return _nameArray;
}


@end
