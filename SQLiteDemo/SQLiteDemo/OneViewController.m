//
//  OneViewController.m
//  SQLiteDemo
//
//  Created by microsparrow on 15/8/11.
//  Copyright (c) 2015年 microsparrow. All rights reserved.
//

#import "OneViewController.h"
#import "TwoViewController.h"

@interface OneViewController ()

@end


static OneViewController *oneVC;

@implementation OneViewController

+ (instancetype)shareInstance {
    if (!oneVC) {
        oneVC = [[OneViewController alloc] init];
    }
    
    return oneVC;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    
    oneVC = self;
    
    self.view.backgroundColor = [UIColor whiteColor];
    
    UIButton *btn = [UIButton buttonWithType:UIButtonTypeCustom];
    btn.frame = CGRectMake(100, 100, 200, 70);
    btn.backgroundColor = [UIColor blueColor];
    [btn setTitle:@"ONEControl" forState:UIControlStateNormal];
    [btn addTarget:self action:@selector(persentView) forControlEvents:UIControlEventTouchUpInside];
    
    [self.view addSubview:btn];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}


- (void)persentView {
    TwoViewController *twoVC = [TwoViewController new];
    [self.navigationController pushViewController:twoVC animated:YES];
    
    
//    TwoViewController *twoVC = [TwoViewController shareInstance];
//    [self presentViewController:twoVC animated:YES completion:nil];
}



- (void)setName:(NSString *)name {
    
}

- (void)setUserClassName:(NSString *)name {
    
}


@end