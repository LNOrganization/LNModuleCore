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

@interface LNModuleAMediator ()<LNFeedModuleProtocol>

@end

@implementation LNModuleAMediator

- (NSString *)version
{
    return @"0.1.1";
}


- (void)doInitialize
{
    NSLog(@"Init finish");
}

@end
