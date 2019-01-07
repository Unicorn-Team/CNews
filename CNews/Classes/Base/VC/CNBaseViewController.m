//
//  CNBaseViewController.m
//  CNews
//
//  Created by chen_sy on 2018/12/18.
//  Copyright © 2018 chen_sy. All rights reserved.
//

#import "CNBaseViewController.h"

@interface CNBaseViewController ()

@end

@implementation CNBaseViewController

////初始化view
//- (void)loadView {
//    [super loadView];
//}

//view初始化完成，此时我们可以在其中创建更多的子控件,比如列表,比如按钮
- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.view.backgroundColor = [UIColor whiteColor];
}

- (void)viewWillAppear:(BOOL)animated {
    [super viewWillAppear:animated];
}

- (void)viewDidAppear:(BOOL)animated {
    [super viewDidAppear:animated];
}

- (void)viewWillDisappear:(BOOL)animated {
    [super viewWillDisappear:animated];
}

- (void)viewDidDisappear:(BOOL)animated {
    [super viewDidDisappear:animated];
}

- (void)dealloc {
}

// 收到内存不足警告
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
