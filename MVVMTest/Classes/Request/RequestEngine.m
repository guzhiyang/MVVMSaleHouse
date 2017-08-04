//
//  RequestEngine.m
//  MVVMTest
//
//  Created by guzhiyang on 2017/7/31.
//  Copyright © 2017年 TonyPersonalProject. All rights reserved.
//

#import "RequestEngine.h"

@implementation RequestEngine

#pragma mark ----------------------- 检测网络 -------------------------

+ (BOOL)networkReachabalityWithURLString:(NSString *)URLString{
    __block BOOL isReachable = YES;
    [[AFNetworkReachabilityManager sharedManager] setReachabilityStatusChangeBlock:^(AFNetworkReachabilityStatus status) {
        switch (status) {
            case AFNetworkReachabilityStatusUnknown:
                isReachable = NO;
                break;
                
            case AFNetworkReachabilityStatusNotReachable:
                isReachable = NO;
                break;
                
            case AFNetworkReachabilityStatusReachableViaWiFi:
                isReachable = YES;
                break;
                
            case AFNetworkReachabilityStatusReachableViaWWAN:
                isReachable = YES;
                break;
                
            default:
                break;
        }
    }];
    
    return isReachable;
}

- (BOOL)checkNetworkStatus{
    BOOL isNetWorkReachable = [RequestEngine networkReachabalityWithURLString:HTTP_ADDRESS];
    if (!isNetWorkReachable) {
        MBProgressHUD *hud = [MBProgressHUD showHUDAddedTo:K_Main_Window animated:YES];
        hud.mode = MBProgressHUDModeText;
        hud.labelText = @"网络不给力,请检查您的网络!";
        [hud hide:YES afterDelay:0.5f];
    }
    
    return isNetWorkReachable;
}

#pragma mark ----------------------- Single -------------------------

+ (instancetype)shareRequestEngine{
    static RequestEngine *shareEngine = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        if (!shareEngine) {
            shareEngine = [[RequestEngine alloc] init];
        }
    });
    
    return shareEngine;
}

#pragma mark ----------------------- Config -------------------------

/// 设置请求配置
- (NSURLSessionConfiguration *)setSessionConfiguration{
    NSURLSessionConfiguration *sessionConfiguration = [NSURLSessionConfiguration defaultSessionConfiguration];
    sessionConfiguration.timeoutIntervalForRequest = 15.f;  /// 请求超时
    sessionConfiguration.timeoutIntervalForResource = 10.f; /// 获取数据超时
    sessionConfiguration.HTTPAdditionalHeaders = @{@"platform":@"iOS"};/// 请求头设置
    return sessionConfiguration;
}

#pragma mark ----------------------- POST -------------------------

- (void)postRequestWithURLString:(NSString *)URLString parameter:(NSDictionary *)parameter successed:(requestSuccessed)successed failed:(requestFailed)failed
{
    [self requestWithType:@"POST"
                URLString:URLString
                parameter:parameter
                successed:successed
                   failed:failed];
}

#pragma mark ----------------------- GET -------------------------

- (void)getRequestWithURLString:(NSString *)URLString parameter:(NSDictionary *)parameter successed:(requestSuccessed)successed failed:(requestFailed)failed
{
    [self requestWithType:@"GET"
                URLString:URLString
                parameter:parameter
                successed:successed
                   failed:failed];
}

#pragma mark ----------------------- Request -------------------------

- (void)requestWithType:(NSString *)type URLString:(NSString *)URLString parameter:(NSDictionary *)parameter successed:(requestSuccessed)successed failed:(requestFailed)failed{
    /// 检测网络
    if (![self checkNetworkStatus]) return;
    
    AFHTTPSessionManager *sessionManager = [[AFHTTPSessionManager manager] initWithSessionConfiguration:[self setSessionConfiguration]];
    sessionManager.responseSerializer = [AFHTTPResponseSerializer serializer];
    [sessionManager.responseSerializer setAcceptableContentTypes:[NSSet setWithObjects:@"text/plain",@"text/html",@"application/json",@"application/x-javascript",nil]];
    
    NSError *error;
    NSMutableURLRequest *request = [[AFHTTPRequestSerializer serializer] requestWithMethod:@"GET"
                                                                                 URLString:URLString
                                                                                parameters:parameter
                                                                                     error:&error];
    NSURLSessionTask *task = [sessionManager dataTaskWithRequest:request
                                               completionHandler:^(NSURLResponse * _Nonnull response, id  _Nullable responseObject, NSError * _Nullable error) {
                                                   if (responseObject) {
                                                       successed(responseObject);
                                                   }
                                                   else{
                                                       RequestError *requestError = [RequestError errorWithDomain:@"请求失败"
                                                                                                             code:1
                                                                                                         userInfo:error.userInfo];
                                                       requestError.errorInfo = error.description;
                                                       failed(requestError);
                                                   }
                                               }];
    [task resume];
}


@end
