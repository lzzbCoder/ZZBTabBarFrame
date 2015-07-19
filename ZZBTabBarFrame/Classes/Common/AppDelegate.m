//
//  AppDelegate.m
//  PartTimeCat
//
//  Created by mac on 15/7/15.
//  Copyright (c) 2015年 ptcat. All rights reserved.
//

#import "AppDelegate.h"
#import "PCTabbarVC.h"
#import "PCMainVC.h"

@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    
    [NSThread sleepForTimeInterval:1.0];
    self.window = [[UIWindow alloc]initWithFrame:[UIScreen mainScreen].bounds];
    
//    PCTabbarVC *barVC = [PCTabbarVC tabBarSetViewController];
    
    PCMainVC *mainVC = [PCMainVC mainVC];
    
    [self.window setRootViewController:mainVC];
    
    [self.window makeKeyAndVisible];
    
    return YES;
}

- (void)applicationWillResignActive:(UIApplication *)application {
    
}

- (void)applicationDidEnterBackground:(UIApplication *)application {
   
}

- (void)applicationWillEnterForeground:(UIApplication *)application {
    
}

- (void)applicationDidBecomeActive:(UIApplication *)application {
    
}

- (void)applicationWillTerminate:(UIApplication *)application {
   
}

@end
