//
//  SHCellViewModel.h
//  MVVMTest
//
//  Created by guzhiyang on 2017/8/1.
//  Copyright © 2017年 TonyPersonalProject. All rights reserved.
//

#import "BaseViewModel.h"

@interface SHCellViewModel : BaseViewModel

/// ImageURL
@property (copy, nonatomic) NSString *imageURLString;

/// 简介
@property (copy, nonatomic) NSString *intro;

/// 小区
@property (copy, nonatomic) NSString *areaName;

/// 售价
@property (copy, nonatomic) NSString *soldPrice;

@end
