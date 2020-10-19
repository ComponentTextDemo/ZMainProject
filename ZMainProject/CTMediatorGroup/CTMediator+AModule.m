//
//  CTMediator+AModule.m
//  ZMainProject
//
//  Created by apple on 2020/10/16.
//  Copyright © 2020 APPLE. All rights reserved.
//

#import "CTMediator+AModule.h"


NSString *const HCCTMediatorTargetNoticeInfoLogin = @"AModule";

NSString *const HCCTMediatorActionNativeGetNoticeInfo =@"AmoduleShowNoticeInfoViewController";


@implementation CTMediator (AModule)

- (UIViewController *)CTMediator_pushNativeGetNoticeInfoWithCallback:(void(^)(NSString * result))callback{
    
    NSMutableDictionary *params = [[NSMutableDictionary alloc]init];
    params[@"callback"] = callback;
    
    return [self performTarget:HCCTMediatorTargetNoticeInfoLogin action:HCCTMediatorActionNativeGetNoticeInfo params:params shouldCacheTarget:NO];
    
}



@end
