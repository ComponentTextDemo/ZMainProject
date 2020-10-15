//
//  AppDelegate.m
//  ZMainProject
//
//  Created by apple on 2020/10/15.
//  Copyright © 2020 APPLE. All rights reserved.
//

#import "AppDelegate.h"
#import "ViewController.h"
@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    
    self.window = [[UIWindow alloc]initWithFrame:[UIScreen mainScreen].bounds];
    self.window.backgroundColor = [UIColor whiteColor];
    UIViewController *viewC = [[ViewController alloc]init];
    UINavigationController *nav = [[UINavigationController alloc]initWithRootViewController:viewC];
    self.window.rootViewController = nav;
    [self.window makeKeyAndVisible];

    return YES;
}

@end
