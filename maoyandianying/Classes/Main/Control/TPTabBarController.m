//
//  TPTabBarController.m
//  maoyandianying
//
//  Created by lixingyun on 14/11/8.
//  Copyright (c) 2014年 com.test.saybel. All rights reserved.
//

#import "TPTabBarController.h"

@interface TPTabBarController ()

@end

@implementation TPTabBarController


+(void)initialize
{
    // Change the title color of tab bar items
    
    NSDictionary *titleAttrDictNormal =  @{NSForegroundColorAttributeName:[UIColor grayColor]};
    [[UITabBarItem appearance] setTitleTextAttributes:titleAttrDictNormal forState:UIControlStateNormal];
    
    NSDictionary *titleAttrDictSelect =  @{NSForegroundColorAttributeName:[UIColor colorWithRed:196/255.0 green:33/255.0 blue:36/255.0 alpha:1.0]};
    

    [[UITabBarItem appearance] setTitleTextAttributes:titleAttrDictSelect forState:UIControlStateSelected];
    

}

- (void)viewDidLoad {
    [super viewDidLoad];
    UITabBar *tabBar = self.tabBar;

    
    UITabBarItem *moviesBarItem = [tabBar.items objectAtIndex:0];
    moviesBarItem.image = [UIImage imageNamed:@"movie"];
    moviesBarItem.selectedImage = [[UIImage imageNamed:@"movie_on"] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    moviesBarItem.title = @"电影";
    
    UITabBarItem *cinemaBarItem = [tabBar.items objectAtIndex:1];
    cinemaBarItem.image = [UIImage imageNamed:@"cinema"];
    cinemaBarItem.selectedImage = [[UIImage imageNamed:@"cinema_on"] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    cinemaBarItem.title = @"影院";
    
    
    UITabBarItem *communityBarItem = [tabBar.items objectAtIndex:2];
    communityBarItem.image = [UIImage imageNamed:@"forum"];
    communityBarItem.selectedImage = [[UIImage imageNamed:@"forum_on"] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    communityBarItem.title = @"社区";
    
    UITabBarItem *meBarItem = [tabBar.items objectAtIndex:3];
    meBarItem.image = [UIImage imageNamed:@"mine"];
    
    //设置UIImage不渲染模式
    meBarItem.selectedImage = [[UIImage imageNamed:@"mine_on"] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal] ;
    meBarItem.title = @"我的";
    
    //修改渲染选择图片的颜色
//    [tabBar setSelectedImageTintColor:[UIColor colorWithRed:196/255.0 green:33/255.0 blue:36/255.0 alpha:1.0]];
    
}

-(void)viewDidAppear:(BOOL)animated
{
    [super viewDidAppear:animated];
    
}



@end
