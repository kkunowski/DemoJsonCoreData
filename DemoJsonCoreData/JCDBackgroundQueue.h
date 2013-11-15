//
// Created by Krzysztof Kunowski on 07.11.2013.
// Copyright (c) 2013 Krzysztof Kunowski. All rights reserved.
//

#import "AFRESTfulCoreDataBackgroundQueue.h"
#import "SLRESTfulCoreData.h"
#import "AFNetworking.h"

/**
 @abstract  <#abstract comment#>
 */
@interface JCDBackgroundQueue : AFRESTfulCoreDataBackgroundQueue

@end

/**
 @abstract  Singleton category
 */
@interface JCDBackgroundQueue (Singleton)

+ (JCDBackgroundQueue *)sharedInstance;

@end