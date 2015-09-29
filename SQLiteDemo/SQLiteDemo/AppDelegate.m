//
//  AppDelegate.m
//  SQLiteDemo
//
//  Created by microsparrow on 15/8/10.
//  Copyright (c) 2015年 microsparrow. All rights reserved.
//

#import "AppDelegate.h"
#import "OneViewController.h"

@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    
    self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
    
    OneViewController *oneVC = [OneViewController shareInstance];
    
    UINavigationController *control = [[UINavigationController alloc] initWithRootViewController:oneVC];
    
    self.window.rootViewController = control;
    
    [self.window makeKeyAndVisible];
    
    return YES;
}

@end
