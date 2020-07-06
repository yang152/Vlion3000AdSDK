//
//  RSGameListViewController.h
//  TestSDK
//
//  Created by yangting on 2020/5/28.
//  Copyright © 2020 杨挺. All rights reserved.
//

#import <UIKit/UIKit.h>

@protocol RSGameListViewControllerDelegate <NSObject>

@optional

/**加载Banner广告*/
- (void)onLoadVlionBannerAd:(NSString *_Nullable)adId;

/**加载插屏广告*/
- (void)onLoadVlionSpotAd:(NSString *_Nullable)adId;

/**加载激励视频广告*/
- (void)onLoadVlionRewardVideoAd:(NSString *_Nullable)adId;

/**展示激励视频广告*/
- (void)onShowVlionRewardVideoAd:(NSString *_Nullable)adId;

/**进入游戏回调*/
- (void)vlionAdViewClickGame:(NSString *_Nullable)gameId;

/**退出游戏回调*/
- (void)vlionAdViewExitGame:(NSString *_Nullable)gameId;

/**激励视频加载失败回调*/
- (void)vlionRewardADLoadFailedWithError:(NSError *_Nullable)error;

@end

NS_ASSUME_NONNULL_BEGIN

@interface RSGameListViewController : UIViewController
/**
 必传sceneName,自己在后台配置的场景名称，这个构造方法和下面构造方法只能选择一种，不可以重复使用
*/
- (instancetype)initWithSceneName:(NSString *)sceneName;
/**
 必传mediaId,可向客服获取
 */
- (instancetype)initWithMediaId:(NSString *)mediaId;

@property (nonatomic, weak) id<RSGameListViewControllerDelegate> delegate;

@end

NS_ASSUME_NONNULL_END
