//
//  PCBaseModel.m
//  PartTimeCat
//  框架模型
//  Created by mac on 15/7/16.
//  Copyright (c) 2015年 ptcat. All rights reserved.
//

#import "PCBaseModel.h"

@implementation PCBaseModel

+(instancetype)initTabBarWithDict:(NSDictionary *)dict{
    
    PCBaseModel *tabBarModel = [[PCBaseModel alloc] init];
    
    if (dict) {
        
        [tabBarModel setValuesForKeysWithDictionary:dict];
    }
    
    return tabBarModel;
}

@end
