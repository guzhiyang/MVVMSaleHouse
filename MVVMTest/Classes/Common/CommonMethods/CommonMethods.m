//
//  CommonMethods.m
//  MVVMTest
//
//  Created by guzhiyang on 2017/8/2.
//  Copyright © 2017年 TonyPersonalProject. All rights reserved.
//

#import "CommonMethods.h"

@implementation CommonMethods

+ (UIWindow *)mainWindow
{
    UIApplication *app = [UIApplication sharedApplication];
    if ([app.delegate respondsToSelector:@selector(window)])
    {
        return [app.delegate window];
    }
    else
    {
        return [app keyWindow];
    }
}

@end
