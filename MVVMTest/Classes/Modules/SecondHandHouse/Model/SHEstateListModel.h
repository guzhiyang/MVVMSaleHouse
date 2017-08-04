//
//  SHEstateListModel.h
//  MVVMTest
//
//  Created by guzhiyang on 2017/8/2.
//  Copyright © 2017年 TonyPersonalProject. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "HandEstateModel.h"

@interface SHEstateListModel : NSObject

/// 房源列表
@property (strong, nonatomic) NSMutableArray<HandEstateModel *> *listArray;

@property (nonatomic,assign) NSInteger resultNo;
@property (nonatomic,strong) NSString *message;
@property (nonatomic,assign) NSInteger total;

@end
