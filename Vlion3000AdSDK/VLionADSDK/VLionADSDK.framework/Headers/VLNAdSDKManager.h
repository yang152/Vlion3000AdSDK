//
//  BUAdSDKManager.h
//  VLionADSDKDemo
//
//  Created by 1 on 2019/5/28.
//  Copyright © 2019 zhulin. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface VLNAdSDKManager : NSObject

+ (VLNAdSDKManager * _Nonnull)defaultManager;

/**
 3000平台初始化方式
 根据AppId初始化广告SDK
 @param appId : 瑞狮平台注册的AppId,不填将导致无法请求广告数据
 瑞狮平台地址:http://3000.mobi/
 */
- (void)registerAppId:(NSString *)appId finishBlock:(void(^)(BOOL success, NSError *error))finishBlock;

/**
  3000平台初始化成功和失败标识，YES标识初始化成功，可以使用所有API；NO标识初始化失败，无法使用所有API
 */
@property (nonatomic, assign, readonly) BOOL reg300Success;

/**
聚合平台初始化方式
根据AppId初始化广告SDK
@param appId : 瑞狮平台注册的AppId,不填将导致无法请求广告数据
瑞狮平台地址:http://puma.vlion.cn
*/
- (void)registerAppId:(NSString *)appId;

/// 3000的appid
- (NSString *)appId;

/// 聚合方式初始化的appid
- (NSString *)polyAppid;

- (NSString *)getSDKVersion;

@end

NS_ASSUME_NONNULL_END
