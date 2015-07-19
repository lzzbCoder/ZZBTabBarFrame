//
//  BaseNavigationVC.m
//  PartTimeCat
//
//  Created by mac on 15/7/16.
//  Copyright (c) 2015年 ptcat. All rights reserved.
//

#import "BaseNavigationVC.h"

@interface BaseNavigationVC ()

@end

@implementation BaseNavigationVC

+(void)initialize{
    
    // 设置所有导航条属性
    UINavigationBar *bar = [UINavigationBar appearanceWhenContainedIn:self, nil];
    //设置所有导航条背景图片
    UIImage *image = [UIImage imageNamed:@"nav_bg"];
    //图片平铺
    image = [image stretchableImageWithLeftCapWidth:image.size.width * 0.5 topCapHeight:image.size.height * 0.5];
    [bar setBackgroundImage:image forBarMetrics:UIBarMetricsDefault];
    
    //设置所有导航栏的UIBarButtonItem字体颜色和字体大小
    NSMutableDictionary *dict = [NSMutableDictionary dictionary];
    dict[NSForegroundColorAttributeName] = [UIColor orangeColor];
    dict[NSFontAttributeName] = [UIFont systemFontOfSize:15.0];
    [[UIBarButtonItem appearance] setTitleTextAttributes:dict forState:UIControlStateNormal];
    
}


- (void)viewDidLoad {
    [super viewDidLoad];
}

@end
