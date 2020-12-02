//
//  VLNSplashAd.h
//  VLionADSDKDemo
//
//  Created by 1 on 2019/5/28.
//  Copyright © 2019 zhulin. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@protocol VLNSplashAdDelegate;

@interface VLNSplashAd : NSObject

/**
     开屏广告初始化方式一，构造方法
     @param sceneName 场景名称，在3000平台场景里面可以查看
     使用该方法初始化，对应的SDK初始化必须是带回调block的那个，而且必须要初始化成功才可以使用
 */
- (instancetype)initWithSceneName:(NSString *)sceneName;

/**
     开屏广告初始化方式二，构造方法
     @param tag3000Id  广告位id，在3000平台对应广告对应广告最左边的数字就是
     使用该方法初始化，对应的SDK初始化------> [[VLNAdSDKManager defaultManager] registerAppId:@""],只要初始化了就可以使用
 */
- (instancetype)initWithTag3000Id:(NSString *)tag3000Id;

/**
*  委托对象
*/
@property (nonatomic, weak) id<VLNSplashAdDelegate> delegate;

/**
 *  构造方法        聚合平台初始化方式
    @param tagId - 广告位 ID
 */
- (instancetype)initWithTagId:(NSString *)tagId;

/**
 *  广告发起请求并展示在Window中
 *  发起拉取广告请求,并将获取的广告以全屏形式展示在传入的Window参数中
 *  提示: Splash广告只支持竖屏
    @param window 展示全屏开屏的容器
 */
- (void)loadAdAndShowInWindow:(UIWindow *)window;

/**
*      发起拉取广告请求
*/
- (void)loadAd;

/**
    广告加载成功后展示
    @param window 广告要展示的窗口
*/
- (void)showAdInWindow:(UIWindow *)window;


@end


@protocol VLNSplashAdDelegate <NSObject>

@optional
/**
 开屏广告加载成功.
 */
- (void)vl_splashAdDidLoad:(VLNSplashAd *)splashAd;

/**
 开屏广告展示失败.
 @param error :失败error
 */
- (void)vl_splashAd:(VLNSplashAd *)splashAd didFailWithError:(NSError *)error;

/**
 开屏广告曝光回调
 */
- (void)vl_splashAdExposured:(VLNSplashAd *)splashAd;

/**
 开屏广告点击回调
 */
- (void)vl_splashAdDidClick:(VLNSplashAd *)splashAd;

/**
 开屏广告关闭回调
 */
- (void)vl_splashAdDidClose:(VLNSplashAd *)splashAd;

/**
  开屏广告将要关闭回调
 */
- (void)vl_splashAdWillClose:(VLNSplashAd *)splashAd;

@end

NS_ASSUME_NONNULL_END
