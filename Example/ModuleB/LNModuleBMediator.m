//
//  LNModuleBMediator.m
//  ModuleB
//
//  Created by Lenny on 2021/10/19.
//  Copyright © 2021 dongjianxiong1. All rights reserved.
//

#import "LNModuleBMediator.h"
#import <LNModuleCore/LNModuleCore.h>


@interface LNModuleBMediator ()<LNModuleBaseProtocol>


@end

@implementation LNModuleBMediator

- (NSString *)modulVersion
{
    return @"0.1.0";
}


- (NSString *)modulName
{
    return @"LNModuleB";
}


@end
