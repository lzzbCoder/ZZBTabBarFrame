//
//  PCNavigationVC.m
//  PartTimeCat
//
//  Created by mac on 15/7/16.
//  Copyright (c) 2015年 ptcat. All rights reserved.
//

#import "PCNavigationVC.h"
#import "PCBaseModel.h"
@interface PCNavigationVC ()

/** tabBar内容数组 */
@property(strong,nonatomic)NSArray *tabBarArray;

@end

@implementation PCNavigationVC

- (NSArray *)tabBarArray{
    
    if (!_tabBarArray) {
        
        _tabBarArray = [self pathForPlistName:@"tabBar"];
        
        NSMutableArray *temAry = [NSMutableArray array];
        
        for (NSDictionary *dict in _tabBarArray) {
            
            PCBaseModel *model = [PCBaseModel initTabBarWithDict:dict];
            
            [temAry addObject:model];
        }
        _tabBarArray = temAry;
        
    }
    
    return _tabBarArray;
}

/**
 * 初始化导航控制器在tabBar中的显示
 * index:根据索引取对应的tabbar信息
 */
- (instancetype)initWithIndex:(NSUInteger)index{
    if (self = [super init]) {
        
        PCBaseModel *tabBarModel = self.tabBarArray[index];
        
        [self setTabBarItemTitle:tabBarModel.title imgName:tabBarModel.img selectImgName:tabBarModel.selectImg];
        
        id objc = [[NSClassFromString(tabBarModel.viewControllerName) alloc] init];
        
        UIViewController *vc = objc;
        
        vc.navigationItem.title = tabBarModel.controllerTitle;
        
        self = [super initWithRootViewController:vc];
    }
    
    return self;
}

- (void)viewDidLoad {
    [super viewDidLoad];
}

/**
 * 根据不同的导航控制器设置tabbar的属性
 * title:tabBar标题 imgName:图片 selectImgName:选中图片
 */
- (void)setTabBarItemTitle:(NSString *)title imgName:(NSString *)imgName selectImgName:(NSString *)selectImgName{
    self.tabBarItem.title = title;
    self.tabBarItem.image = [[UIImage imageNamed:imgName] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    self.tabBarItem.selectedImage = [[UIImage imageNamed:selectImgName] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
}

/**
 *  获取tabBar的plist
 *
 *  @param fileName plist文件名
 *
 *  @return 缓存数组
 */
-(NSArray *)pathForPlistName:(NSString *) fileName{
    
    NSString *file = [[NSBundle mainBundle] pathForResource:fileName ofType:@"plist"];
    
    return [NSArray arrayWithContentsOfFile:file];
}

@end
