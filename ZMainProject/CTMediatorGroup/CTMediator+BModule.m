//
//  CTMediator+BModule.m
//  ZMainProject
//
//  Created by apple on 2020/10/16.
//  Copyright © 2020 APPLE. All rights reserved.
//

#import "CTMediator+BModule.h"

NSString *const HCCToShowUserInfoTagert = @"BModule";
NSString *const HCCJumpShowUserAction = @"BModuleShowUserInfoViewController";

@implementation CTMediator (BModule)

- (UIViewController *)CTMediator_BViewControllerWithContentText:(NSString *)contentText{
    
    
    NSMutableDictionary *params = [[NSMutableDictionary alloc]init];
    
    params[@"contentText"] = contentText;
    
    return [self performTarget:HCCToShowUserInfoTagert action:HCCJumpShowUserAction params:params shouldCacheTarget:NO];
    
    
    return nil;
}

@end
