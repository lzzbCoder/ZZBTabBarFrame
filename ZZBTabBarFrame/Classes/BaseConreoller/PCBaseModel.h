//
//  PCBaseModel.h
//  PartTimeCat
//  框架模型
//  Created by mac on 15/7/16.
//  Copyright (c) 2015年 ptcat. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface PCBaseModel : NSObject
/** tabBar标题 */
@property(copy,nonatomic)NSString *title;
/** tabBar图片 */
@property(copy,nonatomic)NSString *img;
/** tabBar选中 */
@property(copy,nonatomic)NSString *selectImg;
/** 控制器名字 */
@property(copy,nonatomic)NSString *viewControllerName;
/** 导航控制器的标题 */
@property(strong,nonatomic)NSString *controllerTitle;

+ (instancetype)initTabBarWithDict:(NSDictionary *)dict;

@end
