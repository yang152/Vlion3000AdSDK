//
//  VLNBannerView.h
//  VLionADSDKDemo
//
//  Created by 1 on 2019/5/31.
//  Copyright © 2019 zhulin. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@protocol VLNBannerViewDelegate;

@interface VLNBannerView : UIView
/**
         横幅初始化构造方法--------该功能SDK必须要初始化回调显示成功了才可以使用
         @param sceneName 场景名称，必传；
         @param adSize 广告的长宽，必须要传一个确定的宽高
         @param delegate 回调事件代理，非必传
         @param rootViewController banner所处的控制器，处理点击相关事件使用，非必传
 */
- (instancetype)initWithSceneName:(NSString *)sceneName
                           adSize:(CGSize)adSize
                         delegate:(nullable id<VLNBannerViewDelegate>)delegate
               rootViewController:(nullable UIViewController *)rootViewController;
/**
         banner初始化成功了，可以在需要的时机去调用该方法
         加载广告
 */
- (void)loadBannerView;
/**
         广告位id
 */
@property (nonatomic, copy, readonly) NSString *tagId;
/**
        横幅初始化构造方法--------聚合平台调用接口
        @param tagId 广告位id，必传；
        @param adSize 广告的长宽，必须要传一个确定的宽高
        @param delegate 回调事件代理，非必传
        @param rootViewController banner所处的控制器，处理点击相关事件使用，非必传
*/
- (instancetype)initWithTagId:(NSString *)tagId
                      adSize:(CGSize)adSize
                    delegate:(nullable id<VLNBannerViewDelegate>)delegate
          rootViewController:(nullable UIViewController *)rootViewController;

@end

@protocol VLNBannerViewDelegate <NSObject>

/**
         Banner广告加载成功.
 */
- (void)bannerViewDidLoad:(VLNBannerView *)bannerView;

/**
         Banner广告加载或者展示失败.
         @param error :失败error
 */
- (void)bannerView:(VLNBannerView *)bannerView didFailWithError:(NSError *)error;

/**
         Banner广告曝光回调
 */
- (void)bannerViewExposured:(VLNBannerView *)bannerView;

/**
         Banner广告点击回调
 */
- (void)bannerViewDidClick:(VLNBannerView *)bannerView;

/**
         Banner广告关闭回调，您需要在该回调方法里面，移除掉广告对象
 */
- (void)bannerViewDidClose:(VLNBannerView *)bannerView;

@end

NS_ASSUME_NONNULL_END
