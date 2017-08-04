//
//  SecondHandHouseCell.h
//  MVVMTest
//
//  Created by guzhiyang on 2017/7/31.
//  Copyright © 2017年 TonyPersonalProject. All rights reserved.
//

#import "BaseCell.h"
#import "SHCellViewModel.h"

@interface SecondHandHouseCell : BaseCell

/// Cell ViewModel
@property (strong, nonatomic) SHCellViewModel *viewModel;

@end
