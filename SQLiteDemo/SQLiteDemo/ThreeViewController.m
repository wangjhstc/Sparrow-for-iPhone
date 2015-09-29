//
//  ThreeViewController.m
//  SQLiteDemo
//
//  Created by microsparrow on 15/8/11.
//  Copyright (c) 2015年 microsparrow. All rights reserved.
//

#import "ThreeViewController.h"
#import "FourViewController.h"

@interface ThreeViewController ()

@end

@implementation ThreeViewController

+ (instancetype)shareIntance {
    static ThreeViewController *threeVC;
    static dispatch_once_t      pred;
    dispatch_once(&pred, ^{
        threeVC = [[self alloc] init];
    });
    return threeVC;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor whiteColor];
    
    UIButton *btn = [UIButton buttonWithType:UIButtonTypeCustom];
    btn.frame = CGRectMake(100, 100, 200, 70);
    btn.backgroundColor = [UIColor redColor];
    [btn setTitle:@"ThreeControl" forState:UIControlStateNormal];
    [btn addTarget:self action:@selector(persentView) forControlEvents:UIControlEventTouchUpInside];
    
    [self.view addSubview:btn];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}

- (void)persentView {
      FourViewController *threeVC = [[FourViewController alloc] init];
    [self.navigationController pushViewController:threeVC animated:YES];
    
    
//    FourViewController *threeVC = [[FourViewController alloc] init];
//    [self presentViewController:threeVC animated:YES completion:nil];
}

@end
