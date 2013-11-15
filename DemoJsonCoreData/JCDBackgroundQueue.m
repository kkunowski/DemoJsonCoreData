//
// Created by Krzysztof Kunowski on 07.11.2013.
// Copyright (c) 2013 Krzysztof Kunowski. All rights reserved.
//


#import "JCDBackgroundQueue.h"

@interface JCDBackgroundQueue () {

}

@end


@implementation JCDBackgroundQueue

@end


#pragma mark - Singleton implementation

@implementation JCDBackgroundQueue (Singleton)

+ (JCDBackgroundQueue *)sharedInstance
{
    static JCDBackgroundQueue *_instance = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _instance = [[super allocWithZone:NULL] initWithBaseURL:[[NSURL alloc] initWithString:baseAPIUrl]];
    });
    return _instance;
}

+ (id)allocWithZone:(NSZone *)zone
{
    return [self sharedInstance];
}

- (id)copyWithZone:(NSZone *)zone
{
    return self;
}

@end
