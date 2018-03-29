//
//  XM_Mediator+QXMHomeModule.h
//  QXM
//
//  Created by 张晓檬 on 2018/3/29.
//  Copyright © 2018年 xiangshang360.com. All rights reserved.
//

#import "XM_Mediator.h"

@interface XM_Mediator (QXMHomeModule)

- (UIViewController *)XM_Mediator_VCForHomeTbaListMoreVC;
- (UIViewController *)XM_Mediator_VCForQXMOptionSearchWithMessage:(BOOL)isFst;
- (void)XM_Mediator_showAlertWithTitle:(NSString *)title Message:(NSString *)message cancelAction:(void(^)(NSDictionary *info))cancelAction confirmAction:(void(^)(NSDictionary *info))confirmAction;

@end
