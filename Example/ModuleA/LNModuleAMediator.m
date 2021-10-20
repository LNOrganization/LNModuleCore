//
//  LNModuleAMediator.m
//  ModuleA
//
//  Created by Lenny on 2021/10/19.
//  Copyright © 2021 dongjianxiong1. All rights reserved.
//

#import "LNModuleAMediator.h"
#import <LNModuleCore/LNModuleCore.h>


@interface LNModuleAMediator ()<LNModuleBaseProtocol>

@end

@implementation LNModuleAMediator

- (NSString *)modulVersion
{
    return @"0.1.1";
}


- (NSString *)modulName
{
    return @"LNModuleA";
}

@end
