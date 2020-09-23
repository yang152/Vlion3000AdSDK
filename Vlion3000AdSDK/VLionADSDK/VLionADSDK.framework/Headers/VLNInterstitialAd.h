//
//  VLNInterstitialAd.h
//  VLionADSDKDemo
//
//  Created by 1 on 2019/6/3.
//  Copyright © 2019 zhulin. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@protocol VLNInterstitialAdDelegate;

@interface VLNInterstitialAd : NSObject

/**
     广告初始化方式一，构造方法
     @param sceneName 场景名称，在3000平台场景里面可以查看
     使用该方法初始化，对应的SDK初始化必须是带回调block的那个，而且必须要初始化成功才可以使用
 */
- (instancetype)initWithSceneName:(NSString *)sceneName;
/**
     广告初始化方式二，构造方法
     @param tag3000Id  广告位id，在3000平台对应广告对应广告最左边的数字就是
     使用该方法初始化，对应的SDK初始化------> [[VLNAdSDKManager defaultManager] registerAppId:@""],只要初始化了就可以使用
 */
- (instancetype)initWithTag3000Id:(NSString *)tag3000Id;

/**
 *  广告位 ID
 */
@property (nonatomic, copy, readonly) NSString * tagId;

/**
 *  插屏广告预加载是否完成
 */
@property (nonatomic, assign, readonly) BOOL isReady;

/**
 *  拉取广告时显示的占位图片
 *  详解：拉取广告过程中会用此图片占位。 通常设置为应用启动时的启动图即可。
 */
@property (nonatomic, strong) UIImage *placeholderImage;


@property (nonatomic, weak) id<VLNInterstitialAdDelegate> delegate;

/**
 *  构造方法---聚合平台使用
 @param tagId - 广告位 ID
 */
- (instancetype)initWithTagId:(NSString *)tagId;

/**
 *  广告发起请求
 */
- (void)loadAdData;

/**
*      广告展示在viewController中
*      提示: Splash广告只支持竖屏
*     @param viewController 展示插屏广告容器容器
*/
- (void)presentFromRootViewController:(UIViewController *)viewController;

@end

@protocol VLNInterstitialAdDelegate <NSObject>

@optional
/**
 插屏广告成功展示.
 */
- (void)vl_interstitialAdDidLoad:(VLNInterstitialAd *)interstitialAd;

/**
 插屏广告展示失败.
 @param error :失败error
 */
- (void)vl_interstitialAd:(VLNInterstitialAd *)interstitialAd didFailWithError:(NSError *)error;

/**
 插屏广告曝光回调
 */
- (void)vl_interstitialAdExposured:(VLNInterstitialAd *)interstitialAd;

/**
 插屏广告点击回调
 */
- (void)vl_interstitialAdDidClick:(VLNInterstitialAd *)interstitialAd;

/**
 插屏广告关闭回调
 */
- (void)vl_interstitialAdDidClose:(VLNInterstitialAd *)interstitialAd;

/**
 插屏广告将要关闭回调
 */
- (void)vl_interstitialAdWillClose:(VLNInterstitialAd *)interstitialAd;

@end

NS_ASSUME_NONNULL_END
