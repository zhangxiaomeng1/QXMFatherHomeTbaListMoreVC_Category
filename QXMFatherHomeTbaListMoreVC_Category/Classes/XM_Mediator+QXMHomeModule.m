//
//  XM_Mediator+QXMHomeModule.m
//  QXM
//
//  Created by 张晓檬 on 2018/3/29.
//  Copyright © 2018年 xiangshang360.com. All rights reserved.
//

#import "XM_Mediator+QXMHomeModule.h"

//target
NSString * const kCTMediatorTargetHome                  = @"Home";//首页组件的Target

//action
NSString * const kXM_MediatorActionHomeTbaListMoreVC     = @"kXM_MediatorActionHomeTbaListMoreVC";//更多功能界面
NSString * const kXM_MediatorActionQXMOptionSearch       = @"kXM_MediatorActionQXMOptionSearch";//自选搜索
NSString * const kXM_MediatorActionShowAlert             = @"kXM_MediatorActionShowAlert";



@implementation XM_Mediator (QXMHomeModule)

- (UIViewController *)XM_Mediator_VCForHomeTbaListMoreVC
{
    UIViewController *viewController = [self performTarget:kCTMediatorTargetHome
                                                    action:kXM_MediatorActionHomeTbaListMoreVC
                                                    params:@{@"key":@"value"}
                                         shouldCacheTarget:NO
                                        ];
    if ([viewController isKindOfClass:[UIViewController class]]) {
        // view controller 交付出去之后，可以由外界选择是push还是present
        return viewController;
    } else {
        // 这里处理异常场景，具体如何处理取决于产品
        return [[UIViewController alloc] init];
    }
}
- (UIViewController *)XM_Mediator_VCForQXMOptionSearchWithMessage:(BOOL)isFst
{
    UIViewController *viewController = [self performTarget:kCTMediatorTargetHome
                                                    action:kXM_MediatorActionQXMOptionSearch
                                                    params:@{@"isFst":@(isFst)}
                                         shouldCacheTarget:NO
                                        ];
    if ([viewController isKindOfClass:[UIViewController class]]) {
        // view controller 交付出去之后，可以由外界选择是push还是present
        return viewController;
    } else {
        // 这里处理异常场景，具体如何处理取决于产品
        return [[UIViewController alloc] init];
    }
}
- (void)XM_Mediator_showAlertWithTitle:(NSString *)title Message:(NSString *)message cancelAction:(void(^)(NSDictionary *info))cancelAction confirmAction:(void(^)(NSDictionary *info))confirmAction;
{
    NSMutableDictionary *paramsToSend = [[NSMutableDictionary alloc] init];
    if (title) {
        paramsToSend[@"title"] = title;
    }
    if (message) {
        paramsToSend[@"message"] = message;
    }
    if (cancelAction) {
        paramsToSend[@"cancelAction"] = cancelAction;
    }
    if (confirmAction) {
        paramsToSend[@"confirmAction"] = confirmAction;
    }
    [self performTarget:kCTMediatorTargetHome
                 action:kXM_MediatorActionShowAlert
                 params:paramsToSend
      shouldCacheTarget:NO];
}


@end
