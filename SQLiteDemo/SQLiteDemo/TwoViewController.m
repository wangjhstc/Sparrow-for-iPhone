//
//  TwoViewController.m
//  SQLiteDemo
//
//  Created by microsparrow on 15/8/11.
//  Copyright (c) 2015年 microsparrow. All rights reserved.
//

#import "TwoViewController.h"
#import "ThreeViewController.h"

@interface TwoViewController ()

@end

@implementation TwoViewController

+ (instancetype)shareInstance {
    static TwoViewController *twoVC;
    static dispatch_once_t pred;
    dispatch_once(&pred, ^{
        twoVC = [[self alloc] init];
    });
    
    return twoVC;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.view.backgroundColor = [UIColor whiteColor];
    
    
    UIButton *btn = [UIButton buttonWithType:UIButtonTypeCustom];
    btn.frame = CGRectMake(100, 100, 200, 70);
    btn.backgroundColor = [UIColor purpleColor];
    [btn setTitle:@"TwoControl" forState:UIControlStateNormal];
    [btn addTarget:self action:@selector(persentView) forControlEvents:UIControlEventTouchUpInside];
    
    [self.view addSubview:btn];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}


- (void)persentView {
    
    ThreeViewController *threeVC = [[ThreeViewController alloc] init];
    [self.navigationController pushViewController:threeVC animated:YES];
    
    
//    ThreeViewController *threeVC = [[ThreeViewController alloc] init];
//    [self presentViewController:threeVC animated:YES completion:nil];
}


@end
