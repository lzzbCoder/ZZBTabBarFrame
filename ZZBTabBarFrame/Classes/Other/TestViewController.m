//
//  TestViewController.m
//  PartTimeCat
//
//  Created by mac on 15/7/16.
//  Copyright (c) 2015年 ptcat. All rights reserved.
//

#import "TestViewController.h"

@interface TestViewController ()

@end

@implementation TestViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    UIBarButtonItem *rightBtn = [[UIBarButtonItem alloc]initWithTitle:@"添加好友" style:UIBarButtonItemStylePlain target:self action:@selector(click)];
    UIBarButtonItem *left = [[UIBarButtonItem alloc]init];
    left.title = @"选择地点>";
    self.navigationItem.rightBarButtonItem = rightBtn;
    self.navigationItem.leftBarButtonItem = left;
}

- (void)click{
    
    NSLog(@"右边按钮点击事件");
}

@end
