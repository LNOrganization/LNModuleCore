
//  LNModuleManager.h
//  LNCore
//
//  Created by Lenny on 2020/6/30.
//

#import <Foundation/Foundation.h>
NS_ASSUME_NONNULL_BEGIN


@interface LNModuleManager : NSObject

+(LNModuleManager *)sharedInstance;

/**
 * 注册协议名称和实现类名称
 */
- (void)addImpClassName:(NSString *)impClassName
           protocolName:(NSString *)protocolName;

/**
 * 根据协议获取实现对象
 *
 * @param protocol 模块通信协议
 * @return 实现类和协议的映射表
 */
- (id)impInstanceForProtocol:(Protocol *)protocol;

/**
 * 获取所有模块实现对象和协议的映射表
 *
 * @return 实现对象和协议的映射表
 */
- (NSDictionary *)allImpInstanceInfos;

/**
 * 创建protocols对应的实现对象。通常使用于需要在启动时初始化的模块，
 * 因为默认情况下所有模块都是懒加载的
 *
 * @param protocols 协议列表
 */
- (void)creatImpInstancesWithProtocols:(NSArray<Protocol *> *)protocols;

@end


NS_ASSUME_NONNULL_END
