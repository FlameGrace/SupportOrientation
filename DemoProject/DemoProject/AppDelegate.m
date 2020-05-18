//
//  AppDelegate.m
//  DemoProject
//
//  Created by Flame Grace on 2019/12/20.
//  Copyright © 2019 Flame Grace. All rights reserved.
//

#import "AppDelegate.h"
#import "ViewController.h"

@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
    self.window = [[UIWindow alloc]initWithFrame:[UIScreen mainScreen].bounds];
    self.rootNaviCon = [[NaviVC alloc]initWithRootViewController:[[ViewController alloc]init]];
    self.rootNaviCon.view.backgroundColor = [UIColor whiteColor];
    self.window.rootViewController = self.rootNaviCon;
    [self.window makeKeyAndVisible];
    return YES;
}

- (UIInterfaceOrientationMask)application:(UIApplication *)application supportedInterfaceOrientationsForWindow:(UIWindow *)window {
     if(_supportOrientation) {
         return UIInterfaceOrientationMaskAllButUpsideDown;
     }else{
         return (UIInterfaceOrientationMaskPortrait);
     }
}

@end
