//
//  PCMainVC.m
//  PartTimeCat
//
//  Created by mac on 15/7/17.
//  Copyright (c) 2015年 ptcat. All rights reserved.
//

#import "PCMainVC.h"
#import "PCTabbarVC.h"

@interface PCMainVC ()

@end

@implementation PCMainVC

+ (instancetype)mainVC{
    
    return [super loadVCfromSB];
}

- (void)viewDidLoad {
    [super viewDidLoad];
}

- (IBAction)applyJob {
    
    NSLog(@"求职入口");
    
    PCTabbarVC *vc = [PCTabbarVC tabBarSetViewController];
    
    [vc setModalTransitionStyle:UIModalTransitionStyleFlipHorizontal];
    
    [self presentViewController:vc animated:YES completion:nil];
    
}

- (IBAction)EnterpriseInrerface {
    
    NSLog(@"企业入口");
}

-(void)dealloc{
    
    NSLog(@"死");
}
@end
