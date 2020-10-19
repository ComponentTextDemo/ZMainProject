//
//  ViewController.m
//  ZMainProject
//
//  Created by apple on 2020/10/15.
//  Copyright © 2020 APPLE. All rights reserved.
//

#import "ViewController.h"
//#import "ShowAViewController.h"
//#import "ShowBViewController.h"

#import "CTMediator+AModule.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.title = @"测试页";
    self.view.backgroundColor = [UIColor whiteColor];
    
    UIButton *button = [UIButton buttonWithType:UIButtonTypeCustom];
    [button setTitle:@"模块A" forState:UIControlStateNormal];
    button.frame = CGRectMake(100, 130, 100, 100);
    button.backgroundColor = [UIColor redColor];
    [button addTarget:self action:@selector(jumpAPage) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:button];
    
    //
    UIButton *button1 = [UIButton buttonWithType:UIButtonTypeCustom];
    [button1 setTitle:@"模块跳转" forState:UIControlStateNormal];
    button1.frame = CGRectMake(100, 330, 100, 100);
    button1.backgroundColor = [UIColor redColor];
    [button1 addTarget:self action:@selector(jumpShowOtherPage) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:button1];
    
    
}

//跳转到A模块
- (void)jumpAPage{
//    ShowAViewController *viewCA = [[ShowAViewController alloc]init];
//    [self.navigationController pushViewController:viewCA animated:YES];
    
    UIViewController *viewC = [[CTMediator sharedInstance] CTMediator_pushNativeGetNoticeInfoWithCallback:^(NSString * _Nonnull result) {
        NSLog(@"%@",result);
    }];
    [self.navigationController pushViewController:viewC animated:YES];
    
}
- (void)jumpShowOtherPage{
    
//    ShowBViewController *viewCB = [[ShowBViewController alloc]init];
//    [self.navigationController pushViewController:viewCB animated:YES];
    
    
    
}

@end
