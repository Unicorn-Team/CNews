//
//  CNTabBarViewController.m
//  CNews
//
//  Created by chen_sy on 2018/12/18.
//  Copyright © 2018 chen_sy. All rights reserved.
//

#import "CNTabBarViewController.h"
#import "CNNewsViewController.h"
#import "CNPictureViewController.h"
#import "CNVideoViewController.h"
#import "CNMeViewController.h"

@interface CNTabBarViewController ()

@end

@implementation CNTabBarViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    CNNewsViewController *newsVC = [[CNNewsViewController alloc] init];
    [self addChildViewController:newsVC
                           title:@"新闻"
                     normalImage:[UIImage imageNamed:@"tabbar_news"]
                   selectedImage:[UIImage imageNamed:@"tabbar_news_hl"]
                      titleColor:[UIColor grayColor]
              selectedTitleColor:[UIColor redColor]];
    
    CNPictureViewController *pictureVC = [[CNPictureViewController alloc] init];
    [self addChildViewController:pictureVC
                           title:@"图片"
                     normalImage:[UIImage imageNamed:@"tabbar_picture"]
                   selectedImage:[UIImage imageNamed:@"tabbar_picture_hl"]
                      titleColor:[UIColor grayColor]
              selectedTitleColor:[UIColor redColor]];
    
    CNVideoViewController *videoVC = [[CNVideoViewController alloc] init];
    [self addChildViewController:videoVC
                           title:@"视屏"
                     normalImage:[UIImage imageNamed:@"tabbar_video"]
                   selectedImage:[UIImage imageNamed:@"tabbar_video_hl"]
                      titleColor:[UIColor grayColor]
              selectedTitleColor:[UIColor redColor]];
    
    CNMeViewController *meVC = [[CNMeViewController alloc] init];
    [self addChildViewController:meVC
                           title:@"我的"
                     normalImage:[UIImage imageNamed:@"tabbar_setting"]
                   selectedImage:[UIImage imageNamed:@"tabbar_setting_hl"]
                      titleColor:[UIColor grayColor]
              selectedTitleColor:[UIColor redColor]];
    
}

- (void)addChildViewController:(UIViewController *)viewController
                         title:(NSString *)title
                   normalImage:(UIImage *)normalImage
                 selectedImage:(UIImage *)selectedImage
                    titleColor:(UIColor *)titleColor
            selectedTitleColor:(UIColor *)selectedTitleColor {
    viewController.tabBarItem.title = title;
    viewController.tabBarItem.image = [normalImage imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    viewController.tabBarItem.selectedImage = [selectedImage imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    [[UITabBarItem appearance] setTitleTextAttributes:@{NSForegroundColorAttributeName:titleColor} forState:UIControlStateNormal];
    [[UITabBarItem appearance] setTitleTextAttributes:@{NSForegroundColorAttributeName:selectedTitleColor} forState:UIControlStateSelected];
    [self addChildViewController:viewController];
}

@end
