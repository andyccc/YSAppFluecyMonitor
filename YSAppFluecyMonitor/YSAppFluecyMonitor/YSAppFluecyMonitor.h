//
//  YSAppFluecyMonitor.h
//  YSAppFluecyMonitor
//
//  Created by andyccc on 2016/3/22.
//  Copyright © 2016年 andyccc. All rights reserved.
//

#import <Foundation/Foundation.h>


#define SHAREDMONITOR [YSAppFluecyMonitor sharedMonitor]


/*!
 *  @brief  监听UI线程卡顿
 */
@interface YSAppFluecyMonitor : NSObject

+ (instancetype)sharedMonitor;

@property (nonatomic, assign) BOOL printLog;
@property (nonatomic, copy) void (^monitorBlock) (NSString *log);

- (void)startMonitoring;
- (void)stopMonitoring;

@end
