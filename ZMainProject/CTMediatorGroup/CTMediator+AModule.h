//
//  CTMediator+AModule.h
//  ZMainProject
//
//  Created by apple on 2020/10/16.
//  Copyright © 2020 APPLE. All rights reserved.
//

#import "CTMediator.h"



NS_ASSUME_NONNULL_BEGIN

@interface CTMediator (AModule)

- (UIViewController *)CTMediator_pushNativeGetNoticeInfoWithCallback:(void(^)(NSString *))callback;


@end

NS_ASSUME_NONNULL_END
