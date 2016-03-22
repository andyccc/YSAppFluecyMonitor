//
//  YSBacktraceLogger.h
//  YSAppFluecyMonitor
//
//  Created by andyccc on 2016/3/23.
//  Copyright © 2016年 andyccc. All rights reserved.
//

#import <Foundation/Foundation.h>

/*!
 *  @brief  线程堆栈上下文输出
 */
@interface YSBacktraceLogger : NSObject

+ (NSString *)ys_backtraceOfAllThread;
+ (NSString *)ys_backtraceOfMainThread;
+ (NSString *)ys_backtraceOfCurrentThread;
+ (NSString *)ys_backtraceOfNSThread:(NSThread *)thread;

+ (void)ys_logMain;
+ (void)ys_logCurrent;
+ (void)ys_logAllThread;

@end
