//
//  VLNContent.h
//  VLionADSDK
//
//  Created by yangting on 2020/8/5.
//  Copyright © 2020 杨挺. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "VLNContentInfo.h"

NS_ASSUME_NONNULL_BEGIN

@interface VLNContent : NSObject

/**
 
     构造方法  3000平台使用
     @param sceneName 场景名称
     @param compeleteBlock 回调，初始化成功会返回一个控制器，用来展示内容
 
 */
- (instancetype)initWithSceneName:(NSString *)sceneName
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
