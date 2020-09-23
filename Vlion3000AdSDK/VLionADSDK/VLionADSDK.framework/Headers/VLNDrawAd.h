//
//  VLNDrawAd.h
//  VLionADSDK
//
//  Created by yangting on 2020/6/4.
//  Copyright © 2020 zhulin. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "VLNDrawAdModel.h"

@class VLNDrawAd;
@protocol VLNDrawAdDelegate <NSObject>

@optional
/**
 *  原生广告加载广告数据成功回调，返回为VLionNativeAdModel对象
 */
- (void)vl_drawAd:(VLNDrawAd *_Nullable)drawAd successToLoad:(NSArray <VLNDrawAdModel *>*_Nullable)drawAdModels;

/**
 *  加载广告数据失败回调
 */
- (void)vl_drawAd:(VLNDrawAd *_Nullable)drawAd didFailWithError:(NSError *_Nullable)error;

/**
    广告曝光回调
 */
- (void)vl_drawAdExposured:(VLNDrawAd *_Nullable)drawAd;

/**
    广告点击回调
 */
- (void)vl_drawAdDidClick:(VLNDrawAd *_Nullable)drawAd;

@end

NS_ASSUME_NONNULL_BEGIN

@interface VLNDrawAd : NSObject
/**
     draw视频广告初始化方式一，构造方法
     @param sceneName 场景名称，在3000平台场景里面可以查看
     使用该方法初始化，对应的SDK初始化必须是带回调block的那个，而且必须要初始化成功才可以使用
 */
- (instancetype)initWithSceneName:(NSString *)sceneName;

/**
     draw视频广告初始化方式二，构造方法
     @param tag3000Id  广告位id，在3000平台对应广告对应广告最左边的数字就是
     使用该方法初始化，对应的SDK初始化------> [[VLNAdSDKManager defaultManager] registerAppId:@""],只要初始化了就可以使用
 */
- (instancetype)initWithTag3000Id:(NSString *)tag3000Id;
/**
 *  广告位 ID
 */
@property (nonatomic, copy, readonly) NSString *tagId;

- (instancetype)initWithTagId:(NSString *)tagId;
/**
  @param count 数量至少为1，建议1，最多3
 */
- (void)loadAdDataWithCount:(NSInteger)count;

@property (weak, nonatomic) id<VLNDrawAdDelegate>delegate;

@end

NS_ASSUME_NONNULL_END
