//
//  VlionAdPageView.h
//  RSMixVoildSDK
//
//  Created by 周晓旭 on 2020/2/16.
//  Copyright © 2020 周晓旭. All rights reserved.
//

#import <UIKit/UIKit.h>

@class VLNewsAdInfoModel, VlionAdPageView;

@protocol VlionAdPageViewDelegate <NSObject>
/**
 
     该回调为用户加载自己广告而设置，返回YES则使用用户自己的广告；返回NO则使用SDK内部广告
 
     @param pageView         新闻对象
 
     @param adInfoModel  广告相关信息
 
     @param titleIndex    新闻标题栏下标
 
 */
- (BOOL)vlionAdPageView:(VlionAdPageView *_Nullable)pageView didLoadAdInfo:(VLNewsAdInfoModel *_Nullable)adInfoModel titleIndex:(NSInteger)titleIndex;

@optional
/**
     标题栏下标为titleIndex的页面，将要刷新页面，重新获取数据
 */
- (void)vlionAdPageView:(VlionAdPageView *_Nullable)pageView beginRefreshNewDataWithTitleIndex:(NSInteger)titleIndex;
/**
    标题栏下标为titleIndex的页面，已经获取到数据，但是并没有刷新页面
*/
- (void)vlionAdPageView:(VlionAdPageView *_Nullable)pageView endRefreshBeforeHandleNewDataWithTitleIndex:(NSInteger)titleIndex;
/**
    标题栏下标为titleIndex的页面，已经获取到数据，已经刷新了页面
*/
- (void)vlionAdPageView:(VlionAdPageView *_Nullable)pageView endRefreshAfterHandleNewDataWithTitleIndex:(NSInteger)titleIndex;

@end

NS_ASSUME_NONNULL_BEGIN

@interface VlionAdPageView : UIView
/**
    新闻页面初始化方法，所有参数为必传参数
 
    @param frame                  新闻对象的位置，初始化要传递准确frame，不建议使用约束
 
    @param sceneName         您使用3000平台，自己创建的场景名称，不可以为空
 
    @param currentVC         新闻页面展示的控制器
*/
- (instancetype)initWithFrame:(CGRect)frame
                    sceneName:(NSString *)sceneName
                    currentVC:(UIViewController *)currentVC;

/**
    使用聚合平台，新闻页面初始化方法，所有参数为必传参数
 
    @param frame                  新闻对象的位置，初始化要传递准确frame，不建议使用约束
 
    @param media                  找客服申请
 
    @param submedia           找客服申请
 
    @param currentVC         新闻页面展示的控制器
*/
- (instancetype)initWithFrame:(CGRect)frame
                        media:(NSString *)media
                     submedia:(NSString *)submedia
                    currentVC:(UIViewController *)currentVC;
/**
    如果要自定义广告，可以设置这个代理
 */
@property (nonatomic, weak) id<VlionAdPageViewDelegate>delegate;

/**
   刷新页面
*/
- (void)updateView;
/**
   刷新页面
*/
- (void)updateViewWithAdInfoModel:(VLNewsAdInfoModel *)adInfoModel;
/**
   关闭广告
*/
- (void)deleteAdInfoModel:(VLNewsAdInfoModel *)adInfoModel;

/**
   广告点击打点
*/
- (void)onAdClickWithAdModel:(VLNewsAdInfoModel *)adModel;

/**
   广告曝光打点
*/
- (void)onAdExposeWithAdModel:(VLNewsAdInfoModel *)adModel;

@end

NS_ASSUME_NONNULL_END
