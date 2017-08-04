//
//  BaseViewProtocol.h
//  StockCalculate
//
//  Created by guzhiyang on 2017/6/30.
//  Copyright © 2017年 TonyPersonalProject. All rights reserved.
//

#import <Foundation/Foundation.h>

@protocol ViewModelProtocol;

@protocol BaseViewProtocol <NSObject>

@optional

/// 使用model初始化
- (instancetype)initWithViewModel:(id <ViewModelProtocol>)model;

/// 绑定数据
- (void)bindViewModel:(id)viewModel;

/// 添加视图
- (void)addViews;

@end
