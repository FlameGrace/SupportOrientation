//
//  UIViewController+LMVInterfaceOrientationsConfig.m
//  Flame Grace
//
//  Created by Flame Grace on 16/8/23.
//  Copyright © 2016年 Flame Grace. All rights reserved.
//

#import "UIViewController+FGSupportOrientation.h"
#import "FGAppDelegateSupportOrientationProtocol.h"


@implementation UIViewController (FGSupportOrientation)


+ (void)setSupportOrientation_fg:(BOOL)support{
    id<FGAppDelegateSupportOrientationProtocol> appDelegate = (id<FGAppDelegateSupportOrientationProtocol>)[UIApplication sharedApplication].delegate;
    if([appDelegate respondsToSelector:@selector(setSupportOrientation:)]){
        appDelegate.supportOrientation = support;
    }
    //如果不支持旋转，强制竖屏
    if(!support){
        [self setDeviceInterfaceOrientation_fg:UIDeviceOrientationPortrait];
    }
}

+ (void)setDeviceInterfaceOrientation_fg:(UIDeviceOrientation)orientation
{
    if ([[UIDevice currentDevice] respondsToSelector:@selector(setOrientation:)]) {
        SEL selector  = NSSelectorFromString(@"setOrientation:");
        NSInvocation *invocation = [NSInvocation invocationWithMethodSignature:[UIDevice instanceMethodSignatureForSelector:selector]];
        [invocation setSelector:selector];
        int i = (int)orientation;
        [invocation setTarget:[UIDevice currentDevice]];
        [invocation setArgument:&i atIndex:2];
        [invocation invoke];
    }
}


+ (void)switchDeviceInterfaceOrientaion_fg{
    UIInterfaceOrientation orientation = [UIApplication sharedApplication].statusBarOrientation;
    if(orientation == UIInterfaceOrientationPortrait){
        [UIViewController setDeviceInterfaceOrientation_fg:UIDeviceOrientationLandscapeLeft];
    }else{
        [UIViewController setDeviceInterfaceOrientation_fg:UIDeviceOrientationPortrait];
    }
}


@end
