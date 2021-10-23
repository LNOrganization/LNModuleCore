//
//  LNModuleCoreProtocol.h
//  LNModuleCore
//
//  Created by Lenny on 2021/10/24.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@protocol LNModuleCoreProtocol <UIApplicationDelegate>

@optional
- (NSString *)version;

- (void)doInitialize;

@end

NS_ASSUME_NONNULL_END
