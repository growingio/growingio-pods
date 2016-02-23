//
//  growing.h
//  Growing
//
//  Created by GrowinIO on 5/3/15.
//  Copyright (c) 2015 GrowingIO. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>


@interface Growing : NSObject

// SDK版本号
+ (NSString*)sdkVersion;

// 如果您的AppDelegate中 实现了其中一个或者多个方法 请以在已实现的函数中 调用handleUrl
//- (BOOL)application:(UIApplication *)application openURL:(NSURL *)url sourceApplication:(nullable NSString *)sourceApplication annotation:(id)annotation
//- (BOOL)application:(UIApplication *)application handleOpenURL:(NSURL *)url
//- (BOOL)application:(UIApplication *)app openURL:(NSURL *)url options:(NSDictionary<NSString*, id> *)options
// 如果以上所有函数都未实现 则请实现 - (BOOL)application:(UIApplication *)application openURL:(NSURL *)url sourceApplication:(nullable NSString *)sourceApplication annotation:(id)annotation 方法并调用handleUrl
+ (BOOL)handleUrl:(NSURL*)url;

// 请在applicationDidFinishLaunching中调用此函数初始化
// 如果需要采样 设置一个采样值   0.01即1% 0.001即1‰  最多支持小数点后5位
+ (void)startWithAccountId:(NSString *)accountId withSampling:(CGFloat)sampling;

// 默认采样100%
+ (void)startWithAccountId:(NSString *)accountId;

// 代码调出配置菜单
+ (void)showGrowingMenu;

// 命令行输入日志
+ (void)setEnableLog:(BOOL)enableLog;
+ (BOOL)getEnableLog;

// 使用预留字段
+ (void)setCS1Value:(NSString*)value forKey:(NSString*)key;
+ (void)setCS2Value:(NSString*)value forKey:(NSString*)key;
+ (void)setCS3Value:(NSString*)value forKey:(NSString*)key;
+ (void)setCS4Value:(NSString*)value forKey:(NSString*)key;
+ (void)setCS5Value:(NSString*)value forKey:(NSString*)key;
+ (void)setCS6Value:(NSString*)value forKey:(NSString*)key;
+ (void)setCS7Value:(NSString*)value forKey:(NSString*)key;
+ (void)setCS8Value:(NSString*)value forKey:(NSString*)key;
+ (void)setCS9Value:(NSString*)value forKey:(NSString*)key;
+ (void)setCS10Value:(NSString*)value forKey:(NSString*)key;


@end


// 该属性setter方法均使用 objc_setAssociatedObject实现
// 如果是自定义的View建议优先使用重写getter方法来实现 以提高性能
@interface UIView(GrowingAttributes)

// 手动标识该view不要追踪
@property (nonatomic, assign) BOOL      growingAttributesDonotTrack;

// 手动标识该view的取值  比如banner广告条的id 可以放在banner按钮的任意view上
@property (nonatomic, copy)   NSString* growingAttributesValue;

@end




