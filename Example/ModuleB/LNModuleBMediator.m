//
//  LNModuleBMediator.m
//  ModuleB
//
//  Created by Lenny on 2021/10/19.
//  Copyright © 2021 dongjianxiong1. All rights reserved.
//

#import "LNModuleBMediator.h"
#import <LNModuleCore/LNModuleCoreProtocol.h>


@interface LNModuleBMediator ()<LNModuleCoreProtocol>

@end

@implementation LNModuleBMediator

- (NSString *)version
{
    return @"0.1.1";
}


- (void)doInitialize
{
    NSLog(@"Init finish");
}


@end
