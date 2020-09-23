//
//  VLNContent.h
//  VLionADSDK
//
//  Created by yangting on 2020/8/5.
//  Copyright © 2020 杨挺. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface VLNContent : NSObject

/**
 
     构造方法一  3000平台使用
     @param sceneName 场景名称，在3000平台场景里面可以查看
     @param compeleteBlock 回调，初始化成功会返回一个控制器，用来展示内容
     使用该方法初始化，对应的SDK初始化必须是带回调block的那个，而且必须要初始化成功才可以使用
 
 */
- (instancetype)initWithSceneName:(NSString *)sceneName
                   compeleteBlock:(void(^)(UIViewController *viewController, NSError *error))compeleteBlock;
/**
 
     构造方法二，3000平台使用
     @param tag3000Id  广告位id，在3000平台对应广告对应广告最左边的数字就是
     @param compeleteBlock 回调，初始化成功会返回一个控制器，用来展示内容
     使用该方法初始化，对应的SDK初始化------> [[VLNAdSDKManager defaultManager] registerAppId:@""],只要初始化了就可以使用
 */
- (instancetype)initWithTag3000Id:(NSString *)tag3000Id
                   compeleteBlock:(void(^)(UIViewController *viewController, NSError *error))compeleteBlock;

@property (nonatomic, strong, readonly) UIViewController *viewController;

/**

    构造方法 聚合平台使用
    @param tagId 内容id
    @param compeleteBlock 回调，初始化成功会返回一个控制器，用来展示内容

*/
- (instancetype)initWithTagId:(NSString *)tagId
                   compeleteBlock:(void(^)(UIViewController *viewController, NSError *error))compeleteBlock;

/**

    场景名称或者内容id

*/
@property (nonatomic, copy, readonly) NSString *tagId;

@end



NS_ASSUME_NONNULL_END
