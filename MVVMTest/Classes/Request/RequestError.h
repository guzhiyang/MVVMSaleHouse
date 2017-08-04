//
//  RequestError.h
//  MVVMTest
//
//  Created by guzhiyang on 2017/7/31.
//  Copyright © 2017年 TonyPersonalProject. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface RequestError : NSError

/// 状态
@property (assign, nonatomic) NSInteger statusCode;

/// 错误信息
@property (copy, nonatomic) NSString *errorInfo;

@end
