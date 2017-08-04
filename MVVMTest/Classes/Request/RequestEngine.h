//
//  RequestEngine.h
//  MVVMTest
//
//  Created by guzhiyang on 2017/7/31.
//  Copyright © 2017年 TonyPersonalProject. All rights reserved.
//

#import <Foundation/Foundation.h>

#import "AFNetworking.h"
#import "RequestError.h"
#import "RequestConfig.h"

/// 请求成功Block
typedef void (^requestSuccessed)(id response);

/// 请求失败Block
typedef void (^requestFailed)(RequestError *error);

@interface RequestEngine : NSObject

/**
 检测网络状态
 
 @param URLString 网络地址
 @return 网络是否可用
 */
+ (BOOL)networkReachabalityWithURLString:(NSString *)URLString;

/// 请求引擎单例
+ (instancetype)shareRequestEngine;

/**
 POST 请求
 
 @param URLString   网络地址
 @param parameter   参数
 @param successed   成功回调
 @param failed      失败回调
 */
- (void)postRequestWithURLString:(NSString *)URLString
                       parameter:(NSDictionary *)parameter
                       successed:(requestSuccessed)successed
                          failed:(requestFailed)failed;

/**
 GET 请求
 
 @param URLString   网络地址
 @param parameter   参数
 @param successed   成功回调
 @param failed      失败回调
 */
- (void)getRequestWithURLString:(NSString *)URLString
                      parameter:(NSDictionary *)parameter
                      successed:(requestSuccessed)successed
                         failed:(requestFailed)failed;

@end
