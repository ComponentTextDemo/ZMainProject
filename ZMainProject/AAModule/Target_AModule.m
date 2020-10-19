//
//  Target_AModule.m
//  ZMainProject
//
//  Created by apple on 2020/10/16.
//  Copyright © 2020 APPLE. All rights reserved.
//

#import "Target_AModule.h"
#import "ShowAViewController.h"

@implementation Target_AModule


- (UIViewController *)Action_AmoduleShowNoticeInfoViewController:(NSDictionary *)params{
    
    typedef void(^CallbackType)(NSString *);
    
    CallbackType callback = params[@"callback"];
    if (callback) {
        callback(@"success");
    }
    
    ShowAViewController *AViewC = [[ShowAViewController alloc]init];
    return AViewC;
    
    
}




@end
