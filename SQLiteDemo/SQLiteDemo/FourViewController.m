//
//  FourViewController.m
//  SQLiteDemo
//
//  Created by microsparrow on 15/8/11.
//  Copyright (c) 2015年 microsparrow. All rights reserved.
//

#import "FourViewController.h"
#import "OneViewController.h"

@interface FourViewController ()

@end

@implementation FourViewController

+ (instancetype)shareInstance {
    static FourViewController *fourVC;
    static dispatch_once_t pred;
    dispatch_once(&pred, ^{
        fourVC = [[self alloc] init];
    });
    
    return fourVC;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor whiteColor];
    
    UIButton *btn = [UIButton buttonWithType:UIButtonTypeCustom];
    btn.frame = CGRectMake(100, 100, 200, 70);
    btn.backgroundColor = [UIColor redColor];
    [btn setTitle:@"FourControl" forState:UIControlStateNormal];
    [btn addTarget:self action:@selector(persentView) forControlEvents:UIControlEventTouchUpInside];
    
    [self.view addSubview:btn];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}
- (void)persentView {
    
    OneViewController *oneVC = [OneViewController shareInstance];
    [self.navigationController popToViewController:oneVC animated:YES];
    
//    self.presentingViewController
    
    
//    OneViewController *oneVC = [OneViewController shareInstance];
//    [oneVC dismissViewControllerAnimated:YES completion:nil];
}

@end
