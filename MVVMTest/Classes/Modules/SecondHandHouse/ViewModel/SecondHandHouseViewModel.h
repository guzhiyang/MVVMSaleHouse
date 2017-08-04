//
//  SecondHandHouseViewModel.h
//  MVVMTest
//
//  Created by guzhiyang on 2017/7/31.
//  Copyright © 2017年 TonyPersonalProject. All rights reserved.
//

#import "BaseViewModel.h"

@interface SecondHandHouseViewModel : BaseViewModel

/// CellViewModel Array
@property (strong, nonatomic) NSMutableArray *estateViewModelArray;

/// 刷新 回调
@property (copy, nonatomic) void (^refreshTable)();

/// 上拉加载更多
@property (copy, nonatomic) void (^loadMoreData)();

/**
 刷新
 */
- (void)refreshEstateData;

/**
 加载更多
 */
- (void)loadMoreEstateData;

@end
