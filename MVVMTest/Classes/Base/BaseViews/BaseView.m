//
//  BaseView.m
//  StockCalculate
//
//  Created by guzhiyang on 2017/6/30.
//  Copyright © 2017年 TonyPersonalProject. All rights reserved.
//

#import "BaseView.h"

@implementation BaseView

- (instancetype)init{
    self = [super init];
    
    if (self) {
        [self bindViewModel:nil];
        [self addViews];
    }
    
    return self;
}

- (instancetype)initWithViewModel:(id<ViewModelProtocol>)model{
    self = [super init];
    
    if (self) {
        [self bindViewModel:nil];
        [self addViews];
    }
    
    return self;
}

- (void)bindViewModel:(id)viewModel{
}

- (void)addViews{
}

@end
