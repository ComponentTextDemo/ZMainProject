//
//  Target_BModule.m
//  ZMainProject
//
//  Created by apple on 2020/10/16.
//  Copyright © 2020 APPLE. All rights reserved.
//

#import "Target_BModule.h"
#import "ShowBViewController.h"

@implementation Target_BModule


- (UIViewController *)Action_BModuleShowUserInfoViewController:(NSDictionary *)params{
    
    NSString *contentText = params[@"contentText"];
    ShowBViewController *BViewC = [[ShowBViewController alloc]initWithContentText:contentText];
    return BViewC;
}


@end
