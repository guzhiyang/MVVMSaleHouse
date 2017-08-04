//
//  AppDelegate.m
//  MVVMTest
//
//  Created by guzhiyang on 2017/7/31.
//  Copyright © 2017年 TonyPersonalProject. All rights reserved.
//

#import "AppDelegate.h"
#import "SecondHandHouseListViewController.h"

//#import "ViewController.h"

@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    self.window = [[UIWindow alloc] initWithFrame:[UIScreen mainScreen].bounds];
    [self.window setBackgroundColor:[UIColor whiteColor]];
    
    SecondHandHouseListViewController *shListViewController = [[SecondHandHouseListViewController alloc] initWithNibName:@"SecondHandHouseListViewController" bundle:nil];
    UINavigationController *shNaviController = [[UINavigationController alloc] initWithRootViewController:shListViewController];
    self.window.rootViewController = shNaviController;
    [self.window makeKeyAndVisible];
    
//    UIStoryboard* storyboard = [UIStoryboard storyboardWithName:@"Main" bundle:nil];
//    ViewController *shListViewController = [storyboard instantiateViewControllerWithIdentifier:@"rootView"];
//    
////    [[ViewController alloc] initWithNibName:@"ViewController" bundle:nil];
//    UINavigationController *shNaviController = [[UINavigationController alloc] initWithRootViewController:shListViewController];
//    self.window.rootViewController = shNaviController;
//    [self.window makeKeyAndVisible];

    return YES;
}


- (void)applicationWillResignActive:(UIApplication *)application {
}


- (void)applicationDidEnterBackground:(UIApplication *)application {
}


- (void)applicationWillEnterForeground:(UIApplication *)application {
}


- (void)applicationDidBecomeActive:(UIApplication *)application {
}


- (void)applicationWillTerminate:(UIApplication *)application {
}


@end
