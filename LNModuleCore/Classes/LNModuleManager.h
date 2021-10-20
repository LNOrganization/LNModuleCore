
//  LNModuleManager.h
//  LNCore
//
//  Created by Lenny on 2020/6/30.
//

#import <Foundation/Foundation.h>
#import "LNModuleAppDelegate.h"
#import "LNModuleBaseProtocol.h"

NS_ASSUME_NONNULL_BEGIN


@interface LNModuleManager : NSObject

+(LNModuleManager *)sharedInstance;

- (void)addImpClassName:(NSString *)impClassName
           protocolName:(NSString *)protocolName;

- (id<LNModuleBaseProtocol>)impInstanceForProtocol:(Protocol *)protocol;

//- (id<LNModuleBaseProtocol>)impInstanceForProtocolName:(NSString *)protocolName;

- (NSDictionary *)allImpInstanceInfos;

@end


NS_ASSUME_NONNULL_END
