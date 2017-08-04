//
//  SHCellViewModel.m
//  MVVMTest
//
//  Created by guzhiyang on 2017/8/1.
//  Copyright © 2017年 TonyPersonalProject. All rights reserved.
//

#import "SHCellViewModel.h"
#import "HandEstateModel.h"

@implementation SHCellViewModel

- (instancetype)initWithModel:(id)model{
    self = [super initWithModel:model];
    if (self) {
        HandEstateModel *estateModel = model;
        self.intro = estateModel.title;
        self.imageURLString = estateModel.fullImagePath;
        self.areaName = estateModel.estateName;
        self.soldPrice = [NSString stringWithFormat:@"%.0f万",estateModel.salePrice/10000];
    }
    
    return self;
}

@end
