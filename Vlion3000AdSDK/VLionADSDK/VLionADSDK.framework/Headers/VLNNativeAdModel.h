//
//  VLionNativeAdModel.h
//  VLionADSDKDemo
//
//  Created by 1 on 2019/5/20.
//  Copyright © 2019 zhulin. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "VLNNativeAdNativeModel.h"

@interface VLNNativeAdModel : NSObject

/**
*  广告的size------支持kvo去监控
*/
@property (nonatomic, assign, readonly) CGSize adSize;

@property (nonatomic ,assign) int             status;//状态码
@property (nonatomic ,assign) int             adt;//创意类型
@property (nonatomic ,copy) NSString * _Nullable      cid;//物料ID
@property (nonatomic ,strong) VLNNativeAdNativeModel* _Nullable   nativead;//原生
@property (nonatomic ,assign) int             tagid;//广告位id
@property (nonatomic ,strong) NSArray <NSString *>* _Nullable    imp_tracking;//曝光监测地址
@property (nonatomic ,strong) NSArray <NSString *>* _Nullable    dp_tracking;//deeplink曝光监测地址
@property (nonatomic ,strong) NSArray <NSString *>* _Nullable    clk_tracking;//点击监测地址
@property (nonatomic ,assign) int             interact_type;//点击行为0-网页,1-下载





+ (VLNNativeAdModel *_Nonnull)modelWithData:(NSDictionary *_Nullable)data;

@end


