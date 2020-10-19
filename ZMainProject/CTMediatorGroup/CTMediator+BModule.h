//
//  CTMediator+BModule.h
//  ZMainProject
//
//  Created by apple on 2020/10/16.
//  Copyright © 2020 APPLE. All rights reserved.
//

#import "CTMediator.h"

NS_ASSUME_NONNULL_BEGIN

@interface CTMediator (BModule)

- (UIViewController *)CTMediator_BViewControllerWithContentText:(NSString *)callback;

@end

NS_ASSUME_NONNULL_END
