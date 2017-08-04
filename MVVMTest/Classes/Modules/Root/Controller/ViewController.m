//
//  ViewController.m
//  MVVMTest
//
//  Created by guzhiyang on 2017/7/31.
//  Copyright © 2017年 TonyPersonalProject. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@property (weak, nonatomic) IBOutlet UIImageView *testImageView;


@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self.view sd_internalSetImageWithURL:[NSURL URLWithString:@"http://202.127.25.101:8888/Common/Library/ewebeditor/aspx/download.aspx?Id=1608021&ViewGuid=b857a5b73d9b489aaf881c42a83f2704&EditGuid=021c3e96a9d04b6ba1646f9f4b080e9b"]
                    placeholderImage:[UIImage imageNamed:@""]
                             options:SDWebImageHighPriority
                        operationKey:nil
                       setImageBlock:^(UIImage * _Nullable image, NSData * _Nullable imageData) {
                           [self.testImageView setImage:image];
                       }
                            progress:^(NSInteger receivedSize, NSInteger expectedSize, NSURL * _Nullable targetURL) {
                                
                            }
                           completed:^(UIImage * _Nullable image, NSError * _Nullable error, SDImageCacheType cacheType, NSURL * _Nullable imageURL) {
                               
                           }];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}

@end
