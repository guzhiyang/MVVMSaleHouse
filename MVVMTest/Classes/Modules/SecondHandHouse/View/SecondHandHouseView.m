//
//  SecondHandHouseView.m
//  MVVMTest
//
//  Created by guzhiyang on 2017/7/31.
//  Copyright © 2017年 TonyPersonalProject. All rights reserved.
//

#import "SecondHandHouseView.h"
#import "SecondHandHouseViewModel.h"
#import "SecondHandHouseCell.h"
#import "SecondHandHouseTableHeadView.h"

@interface SecondHandHouseView()<UITableViewDelegate,UITableViewDataSource>

/// Table
@property (strong, nonatomic) UITableView   *houseTableView;

/// ViewModel
@property (strong, nonatomic) SecondHandHouseViewModel *houseViewModel;

/// Table Section Head
@property (strong, nonatomic) SecondHandHouseTableHeadView *tableHeadView;

@end

@implementation SecondHandHouseView

static NSString *houseCellID = @"SecondHandHouseCell";

#pragma mark ----------------------- Protocol -------------------------

- (instancetype)initWithViewModel:(id<ViewModelProtocol>)model{
    self.houseViewModel = (SecondHandHouseViewModel *)model;
    return [super initWithViewModel:model];
}

- (void)addViews{
    [self addSubview:self.houseTableView];
    [self setNeedsUpdateConstraints];
}

- (void)updateConstraints{
//    WEAK_SELF(weakSelf);
//    [self.houseTableView mas_makeConstraints:^(MASConstraintMaker *make) {
////        make.edges.equalTo(weakSelf);
//        make.left.mas_equalTo(0);
//        make.right.mas_equalTo(0);
//        make.top.mas_equalTo(0);
//        make.bottom.mas_equalTo(0);
//    }];

    [super updateConstraints];
}

- (void)bindViewModel:(id)viewModel{
    WEAK_SELF(weakSelf);
    _houseViewModel.refreshTable = ^(){
        [weakSelf.houseTableView reloadData];
        [weakSelf.houseTableView.mj_header endRefreshing];
    };
    
    _houseViewModel.loadMoreData = ^(){
        [weakSelf.houseTableView reloadData];
        [weakSelf.houseTableView.mj_footer endRefreshing];
    };
}

#pragma mark ----------------------- Table DataSource -------------------------

/// Section Count
- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView{
    return 1;
}

/// Cell Count
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return [self.houseViewModel.estateViewModelArray count];
}

/// Cell Height
- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath{
    return 100.f;
}

/// HeaderView
- (UIView *)tableView:(UITableView *)tableView viewForHeaderInSection:(NSInteger)section{
    return [UIView new];
//    return self.tableHeadView;
}

- (CGFloat)tableView:(UITableView *)tableView heightForHeaderInSection:(NSInteger)section{
    return CGFLOAT_MIN;
}

/// Cell
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    SecondHandHouseCell *cell = [tableView dequeueReusableCellWithIdentifier:houseCellID];
    if (!cell) {
        cell = (SecondHandHouseCell* )[[[NSBundle mainBundle] loadNibNamed:houseCellID owner:self.curViewController options:nil] lastObject];
    }
    cell.viewModel = [[SHCellViewModel alloc] initWithModel:[_houseViewModel.estateViewModelArray objectAtIndex:indexPath.row]];
    return cell;
}

#pragma mark ----------------------- Tabel Delegate -------------------------

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    [tableView deselectRowAtIndexPath:indexPath animated:YES];
}

#pragma mark ----------------------- Lazy Load -------------------------

- (UITableView *)houseTableView{
    if (!_houseTableView) {
        
        WEAK_SELF(weakSelf);
        _houseTableView = [[UITableView alloc] initWithFrame:CGRectMake(0, 0, APP_SCREEN_WIDTH, APP_SCREEN_HEIGHT) style:UITableViewStylePlain];
        _houseTableView.delegate = self;
        _houseTableView.dataSource = self;
        _houseTableView.separatorStyle = UITableViewCellSeparatorStyleNone;
        
        _houseTableView.mj_header = [MJRefreshNormalHeader headerWithRefreshingBlock:^{
            [weakSelf.houseViewModel refreshEstateData];
        }];
        
        _houseTableView.mj_footer = [MJRefreshBackNormalFooter footerWithRefreshingBlock:^{
            [weakSelf.houseViewModel loadMoreEstateData];
        }];
    }
    
    return _houseTableView;
}

- (SecondHandHouseTableHeadView *)tableHeadView{
    if (!_tableHeadView) {
        _tableHeadView = [[SecondHandHouseTableHeadView alloc] init];
    }
    
    return _tableHeadView;
}

@end
