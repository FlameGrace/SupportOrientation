//
//  LMVAppDelegateSupportOrientationProtocol.h
//  DemoProject
//
//  Created by Flame Grace on 2020/4/15.
//  Copyright © 2020 Flame Grace. All rights reserved.
//  AppDelegate遵循该协议后，可以快捷设置是否支持全屏

#import <Foundation/Foundation.h>

@protocol FGAppDelegateSupportOrientationProtocol <NSObject>

@property (assign,nonatomic) BOOL supportOrientation;

@end

