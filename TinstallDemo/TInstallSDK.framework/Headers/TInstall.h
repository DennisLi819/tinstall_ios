//
//  TInstall.h
//  TInstall
//
//  Created by fx on 2020/12/15.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface TInstall : NSObject

/// 安装SDK
/// @param appkey appkey
+ (void)initInstall:(NSString *)appkey;

/// 获取参数
/// @param result 结果
+ (void)getWithInstallResult:(void(^ _Nullable)(NSDictionary * _Nullable data))result;

/// 用户注册
+ (void)installUserRegister;

@end

NS_ASSUME_NONNULL_END
