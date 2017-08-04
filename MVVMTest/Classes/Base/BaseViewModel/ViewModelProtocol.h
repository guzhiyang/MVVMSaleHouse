//
//  ViewModelProtocol.h
//  StockCalculate
//
//  Created by guzhiyang on 2017/6/30.
//  Copyright © 2017年 TonyPersonalProject. All rights reserved.
//

#import <Foundation/Foundation.h>

@protocol ViewModelProtocol <NSObject>

@optional

/// 请求
@property (strong, nonatomic) RequestEngine *requestEngine;

/// 填充数据
- (instancetype)initWithModel:(id)model;

/// 初始化 ViewModel
- (void)initializeVM;

@end
