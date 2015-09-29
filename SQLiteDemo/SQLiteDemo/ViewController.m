//
//  ViewController.m
//  SQLiteDemo
//
//  Created by microsparrow on 15/8/10.
//  Copyright (c) 2015年 microsparrow. All rights reserved.
//

#import "ViewController.h"
#import <sqlite3.h>

#import "OneViewController.h"

@interface ViewController ()
{
    sqlite3 *db;
}

@end

@implementation ViewController

//+ (instancetype)shareInstance {
//    static ViewController *VC;
//    static dispatch_once_t pred;
//    dispatch_once(&pred, ^{
//        VC = [[self alloc] init];
//    });
//    
//    return VC;
//}

- (void)viewDidLoad {
    [super viewDidLoad];
    
    UIButton *btn = [UIButton buttonWithType:UIButtonTypeCustom];
    btn.frame = CGRectMake(100, 100, 200, 70);
    btn.backgroundColor = [UIColor brownColor];
    [btn setTitle:@"ViewControl" forState:UIControlStateNormal];
    [btn addTarget:self action:@selector(persentView) forControlEvents:UIControlEventTouchUpInside];
    
    [self.view addSubview:btn];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}

- (void)persentView {
    
    OneViewController *oneVC = [OneViewController shareInstance];
    UINavigationController *control = [[UINavigationController alloc] initWithRootViewController:oneVC];
//    [self.navigationController pushViewController:control animated:YES];
    [self presentViewController:control animated:YES completion:nil];
    
    
//    OneViewController *oneVC = [OneViewController shareInstance];
//    
//    [self presentViewController:oneVC animated:YES completion:nil];
}



- (void)openDB {
    
    NSArray *paths = NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES);
    NSString *documents = [paths objectAtIndex:0];
    NSString *database_path = [documents stringByAppendingPathComponent:@"Tabs"];
    
    if (sqlite3_open([database_path UTF8String], &db) != SQLITE_OK) {
        sqlite3_close(db);
        NSLog(@"数据库打开失败");
    }
}

-(void)execSql:(NSString *)sql {
    char *err;
    if (sqlite3_exec(db, [sql UTF8String], NULL, NULL, &err) != SQLITE_OK) {
        sqlite3_close(db);
        NSLog(@"数据库操作数据失败!");
    }
}

- (void)searchSql:(NSString *)sql {
    NSString *sqlQuery = @"SELECT * FROM PERSONINFO";
    sqlite3_stmt * statement;
    
    if (sqlite3_prepare_v2(db, [sqlQuery UTF8String], -1, &statement, nil) == SQLITE_OK) {
        while (sqlite3_step(statement) == SQLITE_ROW) {
            char *name = (char*)sqlite3_column_text(statement, 1);
            NSString *nsNameStr = [[NSString alloc]initWithUTF8String:name];
            
            int age = sqlite3_column_int(statement, 2);
            
            char *address = (char*)sqlite3_column_text(statement, 3);
            NSString *nsAddressStr = [[NSString alloc]initWithUTF8String:address];
            
            NSLog(@"name:%@  age:%d  address:%@",nsNameStr,age, nsAddressStr);
        }
    }
    sqlite3_close(db);
}

@end