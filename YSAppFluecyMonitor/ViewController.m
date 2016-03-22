//
//  ViewController.m
//  YSAppFluecyMonitor
//
//  Created by andyccc on 2016/3/22.
//  Copyright © 2016年 andyccc. All rights reserved.
//

#import "ViewController.h"
#import "YSBacktraceLogger.h"
#import "YSAppFluecyMonitor.h"


@interface ViewController ()<UITableViewDelegate, UITableViewDataSource>

@property (weak, nonatomic) IBOutlet UITableView *tableView;

@end

@implementation ViewController


- (void)viewDidLoad {
    [super viewDidLoad];
    
    [YSAppFluecyMonitor sharedMonitor].monitorBlock = ^(NSString *log) {
        NSLog(@"\n");
        NSLog(@"%@", log);
        NSLog(@"\n");
    };
    
    [[YSAppFluecyMonitor sharedMonitor] startMonitoring];
    [self.tableView registerClass: [UITableViewCell class] forCellReuseIdentifier: @"cell"];
}

- (void)viewDidAppear: (BOOL)animated {
    [super viewDidAppear: animated];
}


#pragma mark - UITableViewDataSource
- (NSInteger)tableView: (UITableView *)tableView numberOfRowsInSection: (NSInteger)section {
    return 1000;
}

- (UITableViewCell *)tableView: (UITableView *)tableView cellForRowAtIndexPath: (NSIndexPath *)indexPath {
    UITableViewCell * cell = [tableView dequeueReusableCellWithIdentifier: @"cell"];
    cell.textLabel.text = [NSString stringWithFormat: @"%lu", indexPath.row];
    if (indexPath.row > 0 && indexPath.row % 30 == 0) {
        usleep(2000000);
    }
    return cell;
}


#pragma mark - UITableViewDelegate
- (void)tableView: (UITableView *)tableView didSelectRowAtIndexPath: (NSIndexPath *)indexPath {
    for (int idx = 0; idx < 100; idx++) {
//        usleep(10000);
    }
}


@end
