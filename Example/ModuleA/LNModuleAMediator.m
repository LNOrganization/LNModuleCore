//
//  LNModuleAMediator.m
//  ModuleA
//
//  Created by Lenny on 2021/10/19.
//  Copyright © 2021 dongjianxiong1. All rights reserved.
//

#import "LNModuleAMediator.h"
#import <LNModuleCore/LNModuleCore.h>
#import <LNModuleProtocol/LNModuleProtocol.h>

__attribute__((constructor)) void addModuleModuleAMediator(void){
    
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        [[LNModuleManager sharedInstance] addImpClassName:@"LNModuleAMediator" protocolName:@"LNFeedModuleProtocol"];
    });
}

@interface LNModuleAMediator ()<LNFeedModuleProtocol>

@end

@implementation LNModuleAMediator

- (NSString *)version
{
    return @"0.1.1";
}

- (void)doInitialize
{
    NSLog(@"LNModuleA Init finish");
}

- (UIViewController *)getFeedDetailViewControllerWithFeedId:(NSString *)feedId {
    return [[UIViewController alloc] init];
}

- (UIViewController *)getMainFeedViewController {
    return [[UIViewController alloc] init];
}

- (UIViewController *)getRecommendFeedViewController {
    return [[UIViewController alloc] init];
}

- (UIViewController *)getTimeLineFeedViewController {
    return [[UIViewController alloc] init];
}

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary<UIApplicationLaunchOptionsKey,id> *)launchOptions
{
    
    return YES;
}

@end
