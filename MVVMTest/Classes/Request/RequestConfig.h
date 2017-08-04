
//
//  RequestConfig.h
//  MVVMTest
//
//  Created by guzhiyang on 2017/7/31.
//  Copyright © 2017年 TonyPersonalProject. All rights reserved.
//

#ifndef RequestConfig_h
#define RequestConfig_h

#pragma mark ----------------------- 请求地址 -------------------------

/// 服务器预留地址
#ifdef DEBUG

#define HTTP_ADDRESS @"http://114.80.110.197/v4/022/json/reply/GetRegionPostsRequest"

#else

#define HTTP_ADDRESS @""

#endif


#endif /* RequestConfig_h */
