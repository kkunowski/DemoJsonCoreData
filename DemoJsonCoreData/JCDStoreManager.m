//
// Created by Krzysztof Kunowski on 07.11.2013.
// Copyright (c) 2013 Krzysztof Kunowski. All rights reserved.
//


#import "JCDStoreManager.h"

@interface JCDStoreManager () {
}

@end

@implementation JCDStoreManager

#pragma mark - SLCoreDataStack

- (NSString *)managedObjectModelName
{
    return @"DemoJsonCoreData";
}

@end