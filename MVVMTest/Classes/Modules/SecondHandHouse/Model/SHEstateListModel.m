//
//  SHEstateListModel.m
//  MVVMTest
//
//  Created by guzhiyang on 2017/8/2.
//  Copyright © 2017年 TonyPersonalProject. All rights reserved.
//

#import "SHEstateListModel.h"

@implementation SHEstateListModel

+ (NSDictionary *)modelCustomPropertyMapper {
    
    return [self appendUserCenterBaseFieldWithOthers:@{@"listArray":@"Result"}];
    
}

+ (NSDictionary *)modelContainerPropertyGenericClass {
    
    return @{
             @"listArray" : [HandEstateModel class]
             };
}

+ (NSMutableDictionary *)appendUserCenterBaseFieldWithOthers:(NSDictionary *)subDic
{
    NSMutableDictionary *baseDic = [[NSMutableDictionary alloc]initWithDictionary:@{@"resultNo":@"ResultNo",@"message":@"Message",@"total":@"Total",}];
    
    [baseDic addEntriesFromDictionary:subDic];
    
    return baseDic;
}


@end

