//
//  ShowBViewController.m
//  ZMainProject
//
//  Created by apple on 2020/10/15.
//  Copyright © 2020 APPLE. All rights reserved.
//

#import "ShowBViewController.h"
#import <Masonry.h>
@interface ShowBViewController ()
@property(nonatomic,copy) UILabel *showLab;

@end

@implementation ShowBViewController


- (instancetype)initWithContentText:(NSString *)contentText
{
    self = [super init];
    if (self) {
        self.showLab.text = contentText;
    }
    return self;
}


- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor whiteColor];
     self.title = @"viewB";
    
    self.showLab.backgroundColor = [UIColor redColor];
    self.showLab.textColor = [UIColor whiteColor];
    [self.view addSubview:self.showLab];
    [self.showLab mas_makeConstraints:^(MASConstraintMaker *make) {
        make.center.equalTo(self.view);
        make.size.mas_equalTo(CGSizeMake(200, 100));
    }];
    
    
}

-  (UILabel *)showLab{
    if (!_showLab) {
        _showLab = [[UILabel alloc]init];
        _showLab.textAlignment = NSTextAlignmentCenter;
    }
    return _showLab;
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
