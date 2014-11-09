//
//  TPNavigationController.m
//  maoyandianying
//
//  Created by lixingyun on 14/11/8.
//  Copyright (c) 2014年 com.test.saybel. All rights reserved.
//

#import "TPNavigationController.h"

@interface TPNavigationController ()

@end

@implementation TPNavigationController

+(void)initialize
{
    [self setupStatusTheme];
}

- (void)viewDidLoad {
    [super viewDidLoad];
}
/**
 *  设置状态栏主题
 */
+(void)setupStatusTheme
{
    //显示状态栏
    [[UIApplication sharedApplication]setStatusBarHidden:NO withAnimation:UIStatusBarAnimationNone];

    UINavigationBar *navBar = [UINavigationBar appearance];

    
    // 设置标题属性
    NSMutableDictionary *textAttrs = [NSMutableDictionary dictionary];
    textAttrs[NSForegroundColorAttributeName] = [UIColor whiteColor];

    textAttrs[NSFontAttributeName] = [UIFont boldSystemFontOfSize:19];
    [navBar setTitleTextAttributes:textAttrs];
    
    
}



@end
