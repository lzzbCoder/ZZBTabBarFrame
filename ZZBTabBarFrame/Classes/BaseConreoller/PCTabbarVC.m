//
//  PCTabbarVC.m
//  PartTimeCat
//
//  Created by mac on 15/7/16.
//  Copyright (c) 2015年 ptcat. All rights reserved.
//

#import "PCTabbarVC.h"
#import "PCNavigationVC.h"

@interface PCTabbarVC ()

@end

@implementation PCTabbarVC

+(instancetype)tabBarSetViewController{

    PCNavigationVC *homeNvc = [[PCNavigationVC alloc]initWithIndex:HOME];
    PCNavigationVC *newJobNvc = [[PCNavigationVC alloc]initWithIndex:NEWJOB];
    PCNavigationVC *miaoNvc = [[PCNavigationVC alloc]initWithIndex:MIAO];
    PCNavigationVC *personalNvc = [[PCNavigationVC alloc]initWithIndex:PERSONAL];

    PCTabbarVC *tabBarVC = [[PCTabbarVC alloc]init];
    tabBarVC.viewControllers = @[homeNvc,newJobNvc,miaoNvc,personalNvc];
    
    return tabBarVC;
}

/**
 * 全局设置TabBar的样式
 */
+(void)initialize{
    
    NSMutableDictionary *dict = [NSMutableDictionary dictionary];
    //字体颜色
    dict[NSForegroundColorAttributeName] = [UIColor orangeColor];
    
    //设置tabbar的title选中颜色
    [[UITabBarItem appearance] setTitleTextAttributes:dict forState:UIControlStateSelected];
    //设置tabbar背景图片
    [[UITabBar appearance] setBackgroundImage:[UIImage imageNamed:@"bar_bg"]];
}

- (void)viewDidLoad {
    [super viewDidLoad];
}

@end
