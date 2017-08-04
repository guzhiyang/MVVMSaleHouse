//
//  BaseCellProtocol.h
//  StockCalculate
//
//  Created by guzhiyang on 2017/7/6.
//  Copyright © 2017年 TonyPersonalProject. All rights reserved.
//

#import <Foundation/Foundation.h>

@protocol BaseCellProtocol <NSObject>

@optional

/// 绑定Model
- (void)bindCellModel;

/// 添加Views
- (void)addCellViews;

@end
