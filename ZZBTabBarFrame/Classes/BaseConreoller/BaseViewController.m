//
//  BaseViewController.m
//  PartTimeCat
//
//  Created by mac on 15/7/16.
//  Copyright (c) 2015年 ptcat. All rights reserved.
//

#import "BaseViewController.h"

@interface BaseViewController ()

@end

@implementation BaseViewController

//加载控制器的storyboard的类方法
+ (instancetype)loadVCfromSB{
    
   return [[self alloc] loadVCfromSB];
}

//加载控制器的storyboard的对象方法
- (instancetype)loadVCfromSB{
    
    UIStoryboard *sb = [UIStoryboard storyboardWithName:NSStringFromClass([self class]) bundle:nil];
    return [sb instantiateViewControllerWithIdentifier:NSStringFromClass([self class])];
}

- (void)viewDidLoad {
    [super viewDidLoad];
    
}

@end
