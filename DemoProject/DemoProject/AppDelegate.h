//
//  AppDelegate.h
//  DemoProject
//
//  Created by Flame Grace on 2019/12/20.
//  Copyright © 2019 Flame Grace. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "NaviVC.h"
#import "FGAppDelegateSupportOrientationProtocol.h"

@interface AppDelegate : UIResponder <UIApplicationDelegate,FGAppDelegateSupportOrientationProtocol>

@property (assign,nonatomic) BOOL supportOrientation;
@property (strong, nonatomic) UIWindow *window;
@property (strong, nonatomic) NaviVC *rootNaviCon;

@end

