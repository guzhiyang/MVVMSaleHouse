//
//  BaseCell.m
//  StockCalculate
//
//  Created by guzhiyang on 2017/7/6.
//  Copyright © 2017年 TonyPersonalProject. All rights reserved.
//

#import "BaseCell.h"

@implementation BaseCell

#pragma mark ----------------------- Custom Methods -------------------------

- (void)awakeFromNib {
    [super awakeFromNib];
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];
}

#pragma mark ----------------------- Protocol -------------------------

- (void)addCellViews{
}

- (void)bindCellModel{
}

@end
