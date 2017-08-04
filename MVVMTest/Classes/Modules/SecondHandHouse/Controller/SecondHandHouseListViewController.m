//
//  SecondHandHouseListViewController.m
//  MVVMTest
//
//  Created by guzhiyang on 2017/7/31.
//  Copyright © 2017年 TonyPersonalProject. All rights reserved.
//

#import "SecondHandHouseListViewController.h"
#import "SecondHandHouseViewModel.h"
#import "SecondHandHouseView.h"


@interface SecondHandHouseListViewController ()

/// MainView
@property (strong, nonatomic) SecondHandHouseView *mainView;

/// Main ViewModel
@property (strong, nonatomic) SecondHandHouseViewModel *mainViewModel;

@end

@implementation SecondHandHouseListViewController

- (void)viewDidLoad {
    self.title = @"二手房";
    [super viewDidLoad];
}

#pragma mark ----------------------- Protocol -------------------------

- (void)addSubviews{
    [self.view addSubview:self.mainView];
}

- (void)bindViewModel{
}


#pragma mark ----------------------- Lazy Load -------------------------

- (SecondHandHouseView *)mainView{
    if (!_mainView) {
        _mainView = [[SecondHandHouseView alloc] initWithViewModel:self.mainViewModel];
        _mainView.frame = CGRectMake(0, 0, APP_SCREEN_WIDTH, APP_SCREEN_HEIGHT);
    }
    return _mainView;
}

- (SecondHandHouseViewModel *)mainViewModel{
    if (!_mainViewModel) {
        _mainViewModel = [[SecondHandHouseViewModel alloc] init];
    }
    return _mainViewModel;
}


#pragma mark ----------------------- Memory -------------------------

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}

@end
