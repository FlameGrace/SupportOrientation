//
//  UIViewController+LMVInterfaceOrientationsConfig.h
//  Flame Grace
//
//  Created by Flame Grace on 16/8/23.
//  Copyright © 2016年 Flame Grace. All rights reserved.
//
/*
 工程设计为，工程可定制旋转，
 */

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>



@interface UIViewController (FGSupportOrientation)

/// 设置当前VC是否可以旋转
+ (void)setSupportOrientation_fg:(BOOL)support;
///强制转屏
+ (void)setDeviceInterfaceOrientation_fg:(UIDeviceOrientation)orientation;
///切换转屏
+ (void)switchDeviceInterfaceOrientaion_fg;

@end
