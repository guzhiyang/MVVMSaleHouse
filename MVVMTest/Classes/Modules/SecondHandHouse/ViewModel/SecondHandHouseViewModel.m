//
//  SecondHandHouseViewModel.m
//  MVVMTest
//
//  Created by guzhiyang on 2017/7/31.
//  Copyright © 2017年 TonyPersonalProject. All rights reserved.
//

#import "SecondHandHouseViewModel.h"
#import "SHEstateListModel.h"

@interface SecondHandHouseViewModel()

@property (assign, nonatomic) NSInteger pageIndex;

@end

@implementation SecondHandHouseViewModel

- (void)initializeVM{
    _estateViewModelArray = [NSMutableArray array];
    [self refreshEstateData];
}

#pragma mark ----------------------- Request -------------------------

- (void)requestEstateListWithPageIndex:(NSInteger)pageIndex isRefresh:(BOOL)isRefresh{
    
    WEAK_SELF(weakSelf);

    MBProgressHUD *hud = [MBProgressHUD showHUDAddedTo:[CommonMethods mainWindow] animated:YES];
    hud.mode = MBProgressHUDModeDeterminate;
    [hud show:YES];

    [self.requestEngine getRequestWithURLString:HTTP_ADDRESS
                                      parameter:@{
                                                  @"BigEstateCode" : @"",
                                                  @"Directions" : @"",
                                                  @"Distance" : @"",
                                                  @"EstateCode" : @"",
                                                  @"Feature" : @"",
                                                  @"Fitments" : @"",
                                                  @"Floors" : @"",
                                                  @"GScopeId" : @"",
                                                  @"ImageHeight" : @75,
                                                  @"ImageWidth" : @100,
                                                  @"IsHot" : @false,
                                                  @"Keywords" : @"",
                                                  @"Lat" : @"",
                                                  @"Lng" : @"",
                                                  @"MaxGArea" : @"",
                                                  @"MaxRentPrice" : @"",
                                                  @"MaxSalePrice" : @"",
                                                  @"MinGArea" : @"",
                                                  @"MinRentPrice" : @"",
                                                  @"MinSalePrice" : @"",
                                                  @"NearRailWayIds" : @"",
                                                  @"OpdateRanges" : @"",
                                                  @"OrderByCriteria" : @"",
                                                  @"PageCount" : @10,
                                                  @"PageIndex" : @(pageIndex),
                                                  @"PostType" : @"S",
                                                  @"PropertyTypes" : @"",
                                                  @"RailLineId" : @"",
                                                  @"RailWayId" : @"",
                                                  @"RegionId" : @"",
                                                  @"RemovePostids" : @"",
                                                  @"RentType" : @"",
                                                  @"RoomCountRanges" : @"",
                                                  @"Round" : @"",
                                                  @"StaffNo" : @"",
                                                  }
                                      successed:^(id response) {
                                          SHEstateListModel *listModel = [SHEstateListModel yy_modelWithJSON:response];
                                          if (isRefresh) {
                                              [weakSelf.estateViewModelArray removeAllObjects];
                                              [weakSelf.estateViewModelArray addObjectsFromArray:listModel.listArray];
                                              if (weakSelf.refreshTable) weakSelf.refreshTable();
                                          }
                                          else{
                                              [weakSelf.estateViewModelArray addObjectsFromArray:listModel.listArray];
                                              if (weakSelf.loadMoreData) weakSelf.loadMoreData();
                                          }
                                          
                                          [hud hide:YES];
                                      }
                                         failed:^(RequestError *error) {
                                             [hud hide:YES];
                                             NSLog(@"请求失败:%@",error.errorInfo);
                                         }];
}

- (void)refreshEstateData{
    _pageIndex = 1;
    [self requestEstateListWithPageIndex:_pageIndex isRefresh:YES];
}

- (void)loadMoreEstateData{
    _pageIndex += 1;
    [self requestEstateListWithPageIndex:_pageIndex isRefresh:NO];
}

@end
