//
//  CNNews.m
//  CNews
//
//  Created by chen_sy on 2018/12/18.
//  Copyright © 2018 chen_sy. All rights reserved.
//

#import "CNNewsViewController.h"
#import "CNMeViewController.h"

@interface CNNewsViewController()

@property (nonatomic, strong) UIScrollView *scrollView;

@end

@implementation CNNewsViewController


- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self.view addSubview:self.scrollView];
    
    UIView *view = [[UIView alloc] initWithFrame:CGRectMake(0, 0, _scrollView.frame.size.width, _scrollView.frame.size.height)];
    view.backgroundColor = [UIColor blueColor];
    [self.scrollView addSubview:view];
    
    UIView *view2 = [[UIView alloc] initWithFrame:CGRectMake(_scrollView.frame.size.width, 0, _scrollView.frame.size.width, _scrollView.frame.size.height)];
    view2.backgroundColor = [UIColor redColor];
    [self.scrollView addSubview:view2];
}

- (UIScrollView *)scrollView {
    if (!_scrollView) {
        _scrollView = [[UIScrollView alloc] initWithFrame:CGRectMake(0, 0, [UIScreen mainScreen].bounds.size.width, [UIScreen mainScreen].bounds.size.height)];
        _scrollView.backgroundColor = [UIColor grayColor];
        _scrollView.contentSize = CGSizeMake(_scrollView.frame.size.width * 8, _scrollView.frame.size.height);
        _scrollView.pagingEnabled = YES;
        _scrollView.alwaysBounceVertical = NO;
    }
    return _scrollView;
}


@end
