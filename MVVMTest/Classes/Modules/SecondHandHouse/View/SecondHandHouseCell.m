//
//  SecondHandHouseCell.m
//  MVVMTest
//
//  Created by guzhiyang on 2017/7/31.
//  Copyright © 2017年 TonyPersonalProject. All rights reserved.
//

#import "SecondHandHouseCell.h"

@interface SecondHandHouseCell()

@property (weak, nonatomic) IBOutlet UIImageView *estateImageView;

@property (weak, nonatomic) IBOutlet UILabel *introLabel;

@property (weak, nonatomic) IBOutlet UILabel *areaLabel;

@property (weak, nonatomic) IBOutlet UILabel *soldPriceLabel;

@end

@implementation SecondHandHouseCell

- (void)bindCellModel{
}

- (void)addCellViews{
}

- (void)setViewModel:(SHCellViewModel *)viewModel{
    [self sd_internalSetImageWithURL:[NSURL URLWithString:viewModel.imageURLString]
                    placeholderImage:[UIImage imageNamed:@""]
                             options:SDWebImageHighPriority
                        operationKey:nil
                       setImageBlock:^(UIImage * _Nullable image, NSData * _Nullable imageData) {
                                           [self.estateImageView setImage:image];
                                       }
                            progress:^(NSInteger receivedSize, NSInteger expectedSize, NSURL * _Nullable targetURL) {
                                           
                                       }
                           completed:^(UIImage * _Nullable image, NSError * _Nullable error, SDImageCacheType cacheType, NSURL * _Nullable imageURL) {
                                           
                                       }];
    
    self.introLabel.text = viewModel.intro;
    self.areaLabel.text = viewModel.areaName;
    self.soldPriceLabel.text = viewModel.soldPrice;
}

@end
