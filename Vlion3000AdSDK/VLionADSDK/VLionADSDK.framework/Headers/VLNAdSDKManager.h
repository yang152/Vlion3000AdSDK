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
     3000平台SDK初始化，方式一--------------------->对应使用广告时候要使用sceneName来初始化
     @param appId : 3000平台申请的ID
     3000平台地址:http://3000.mobi/
 */
- (void)registerAppId:(NSString *)appId finishBlock:(void(^)(BOOL success,  NSError * _Nullable error))finishBlock;

/**
     3000平台SDK初始化---方式二--------------------->对应使用广告时候要使用tag3000Id来初始化
     @param appId : 3000平台申请的ID
     3000平台地址:http://3000.mobi/
 */
- (void)registerAppId:(NSString *)appId;

/**
     3000平台初始化是否成功，YES标识初始化成功，可以使用所有API；NO标识初始化失败，无法使用所有API
 */
@property (nonatomic, assign, readonly) BOOL reg300Success;


/// 3000的appid
- (NSString *)appId;


+ (NSString *)sdkVersion;



/**
    聚合平台初始化方式
    根据AppId初始化广告SDK
    @param polyAppId : 瑞狮平台注册的AppId,不填将导致无法请求广告数据
    瑞狮平台地址:http://puma.vlion.cn
*/
- (void)registerPolyAppId:(NSString *)polyAppId;

/// 聚合方式初始化的appid
- (NSString *)polyAppid;


@end

NS_ASSUME_NONNULL_END
