//
//  OneViewController.h
//  SQLiteDemo
//
//  Created by microsparrow on 15/8/11.
//  Copyright (c) 2015年 microsparrow. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface OneViewController : UIViewController

+ (nullable instancetype)shareInstance;

/**
 *  @author wangjianghua, 15-09-29 22:09:09
 *
 *  @brief  名称
 */
@property   (nonnull,nonatomic,retain)  NSString    *name;
/**
 *  @author wangjianghua, 15-09-29 22:09:59
 *
 *  @brief  身份证
 */
@property   (nonnull,nonatomic,retain)  NSString    *ID;

/**
 *  @author wangjianghua, 15-09-29 22:09:14
 *
 *  @brief  班级名称
 */
//@property   (nonatomic,retain)  __nonnull   NSString    *className;//<这种写法错了，不知道为什么>

@property   (nonatomic,retain)  NSString*  __nonnull  className;

@property   (nonatomic,retain,nonnull)  NSArray<NSString *>   *members;

- (void)setName:(NSString * _Nonnull)name;

- (void)setUserClassName:(NSString * _Nonnull)name;

//- (__kindof UIBarButtonItem*)getUIBarButtonItem;

@end
