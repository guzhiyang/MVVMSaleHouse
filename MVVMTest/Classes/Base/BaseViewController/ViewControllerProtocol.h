//
//  ViewControllerProtocol.h
//  StockCalculate
//
//  Created by guzhiyang on 2017/6/30.
//  Copyright © 2017年 TonyPersonalProject. All rights reserved.
//

#import <Foundation/Foundation.h>

@protocol ViewModelProtocol;

@protocol ViewControllerProtocol <NSObject>

@optional

/// 填充数据
- (instancetype)initWithViewModel:(id <ViewModelProtocol>)viewModel;

/// 绑定viewModel
- (void)bindViewModel;

/// 添加视图
- (void)addSubviews;

/// 导航
- (void)layoutNavigation;

/// 首次加载数据
- (void)firstGetData;

@end
