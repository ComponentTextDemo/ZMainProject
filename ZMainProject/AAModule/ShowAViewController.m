//
//  ShowAViewController.m
//  ZMainProject
//
//  Created by apple on 2020/10/15.
//  Copyright © 2020 APPLE. All rights reserved.
//

#import "ShowAViewController.h"
#import "CTMediator+BModule.h"
@interface ShowAViewController ()

@end

@implementation ShowAViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor whiteColor];
    self.title = @"viewA";
    
    UIButton *button = [UIButton buttonWithType:UIButtonTypeCustom];
    [button setTitle:@" 在A中跳转到模块B" forState:UIControlStateNormal];
    button.frame = CGRectMake(50, 330, 300, 100);
    button.backgroundColor = [UIColor redColor];
    [button addTarget:self action:@selector(ShowAjumpBPage) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:button];
    
}


- (void)ShowAjumpBPage{
    
    UIViewController *viewController = [[CTMediator sharedInstance] CTMediator_BViewControllerWithContentText:@"hello, world!"];
    [self.navigationController pushViewController:viewController animated:YES];
    
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
