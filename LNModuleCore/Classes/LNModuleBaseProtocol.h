//
//  LNModuleProtocol.h
//  LNCore
//
//  Created by Lenny on 2021/10/12.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@protocol LNModuleBaseProtocol <UIApplicationDelegate>

- (NSString *)modulVersion;

- (NSString *)modulName;

@end

NS_ASSUME_NONNULL_END
