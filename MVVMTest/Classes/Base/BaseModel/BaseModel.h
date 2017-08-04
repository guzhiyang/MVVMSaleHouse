//
//  BaseModel.h
//  StockCalculate
//
//  Created by guzhiyang on 2017/5/26.
//  Copyright © 2017年 TonyPersonalProject. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface BaseModel : NSObject

/**
 请求状态
 */
@property (copy, nonatomic) NSString    *status;

/**
 返回提示 包含错误信息
 */
@property (copy, nonatomic) NSString    *message;

@end
