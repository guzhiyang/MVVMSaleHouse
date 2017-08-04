//
//  BaseViewController.m
//  StockCalculate
//
//  Created by guzhiyang on 2017/5/26.
//  Copyright © 2017年 TonyPersonalProject. All rights reserved.
//

#import "BaseViewController.h"

@interface BaseViewController ()

@end

@implementation BaseViewController

#pragma mark ----------------------- Life Cycle -------------------------

+ (instancetype)allocWithZone:(struct _NSZone *)zone{
    BaseViewController *baseViewController = [super allocWithZone:zone];
    [baseViewController addSubviews];
    [baseViewController layoutNavigation];
    [baseViewController bindViewModel];
    return baseViewController;
}

- (void)viewDidLoad {
    [super viewDidLoad];
}

#pragma mark ----------------------- Protocol -------------------------

- (instancetype)initWithViewModel:(id<ViewModelProtocol>)viewModel{
    self = [super init];
    if (self) {
        
    }
    
    return self;
}

- (void)bindViewModel{
}

- (void)addSubviews{
}

- (void)layoutNavigation{
}

- (void)firstGetData{
}

#pragma mark ----------------------- Memory -------------------------

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}
@end
