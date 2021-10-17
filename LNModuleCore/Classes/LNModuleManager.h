
//  LNModuleManager.h
//  LNCore
//
//  Created by Lenny on 2020/6/30.
//

#import <Foundation/Foundation.h>
#import "LNModuleAppDelegate.h"
#import "LNModuleProtocol.h"

NS_ASSUME_NONNULL_BEGIN


@interface LNModuleManager : NSObject

+(LNModuleManager *)sharedInstance;

- (void)addImpClassName:(NSString *)impClassName
           protocolName:(NSString *)protocolName;

//- (id<LNModuleProtocol>)impInstanceForProtocol:(Protocol *)protocol;

- (id<LNModuleProtocol>)impInstanceForProtocolName:(NSString *)protocolName;

- (NSDictionary *)allImpInstanceInfos;

@end


NS_ASSUME_NONNULL_END
