//
//  BaseViewModel.m
//  StockCalculate
//
//  Created by guzhiyang on 2017/6/30.
//  Copyright © 2017年 TonyPersonalProject. All rights reserved.
//

#import "BaseViewModel.h"

@implementation BaseViewModel

@synthesize requestEngine = _requestEngine;

+ (instancetype)allocWithZone:(struct _NSZone *)zone{
    BaseViewModel *viewModel = [super allocWithZone:zone];
    
    if (viewModel) {
        [viewModel initializeVM];
    }
    
    return viewModel;
}

- (instancetype)initWithModel:(id)model{
    self = [super init];
    
    if (self) {
        
    }
    
    return self;
}

- (RequestEngine *)requestEngine{
    if (!_requestEngine) {
        _requestEngine = [RequestEngine shareRequestEngine];
    }
    
    return _requestEngine;
}

- (void)initializeVM{
}

@end
