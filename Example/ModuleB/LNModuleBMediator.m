//
//  LNModuleBMediator.m
//  ModuleB
//
//  Created by Lenny on 2021/10/19.
//  Copyright © 2021 dongjianxiong1. All rights reserved.
//

#import "LNModuleBMediator.h"
#import <LNModuleCore/LNModuleCore.h>
#import <LNModuleProtocol/LNAccountModuleProtocol.h>


__attribute__((constructor)) void addModulLNModuleBMediator(void){
    
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        [[LNModuleManager sharedInstance] addImpClassName:@"LNModuleBMediator" protocolName:@"LNAccountModuleProtocol"];
    });
}


@interface LNModuleBMediator ()<LNAccountModuleProtocol>

@end

@implementation LNModuleBMediator

+(LNModuleBMediator *)sharedInstance
{
    static LNModuleBMediator *instance = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        instance = [[LNModuleBMediator alloc] init];
    });
    return instance;
}

- (NSString *)version
{
    return @"0.1.1";
}


- (void)doInitialize
{
    NSLog(@"Init finish");
}

- (void)deInitialize {
    NSLog(@"Init destroy");
    [[LNModuleManager sharedInstance] removeInstanceForProtocol:@protocol(LNAccountModuleProtocol)];
}

#pragma mark - LNAccountModuleProtocol
- (void)getAccountInfo:(LNLoginCompletion)completion {
    
}

- (BOOL)isLogin {
    return YES;
}

- (BOOL)loginIfNeed:(LNLoginCompletion)completion {
    if ([self isLogin]) {
        return YES;
    }else{
        completion(nil, nil);
    }
    return NO;
}

- (void)logout {
    
}

- (void)registerLoginCompletionNotify:(LNLoginCompletion)completion forKey:(NSString *)key {
    
}

- (void)registerLogoutCompletionNotify:(LNLogotCompletion)completion forKey:(NSString *)key {
    
}

- (void)removeLoginNotificationForKey:(NSString *)key {
    
}

- (void)removeLogoutNotificationForKey:(NSString *)key {
    
}

@end


@implementation  LNModuleBMediator (AppDelegate)

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary<UIApplicationLaunchOptionsKey,id> *)launchOptions
{
    
    return YES;
}

@end
