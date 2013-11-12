//
//  Contact.m
//  DemoJsonCoreData
//
//  Created by Krzysztof Kunowski on 07.11.2013.
//  Copyright (c) 2013 Krzysztof Kunowski. All rights reserved.
//

#import "Contact.h"
#import "SLRESTfulCoreData.h"

@implementation Contact

@dynamic firstName;
@dynamic lastName;
@dynamic identifier;

+(void)initialize{
    [self registerUniqueIdentifierOfJSONObjects:@"identifier"];
    [self registerAttributeName:@"firstName" forJSONObjectKeyPath:@"firstName"];
    [self registerAttributeName:@"lastName" forJSONObjectKeyPath:@"lastName"];
}

+ (void)contactWithName:(NSString *)name completionHandler:(void(^)(Contact *contact, NSError *error))completionHandler
{
  NSURL *URL = [NSURL URLWithString:[NSString stringWithFormat:@"contact/%@", name]];
  [self fetchObjectFromURL:URL completionHandler:completionHandler];
}

+ (void)allContactsWithCompletionHandler:(void(^)(NSArray *contacts, NSError *error))completionHandler
{
    NSURL *URL = [NSURL URLWithString:@"contacts"];
    [self fetchObjectsFromURL:URL completionHandler:completionHandler];
}

@end
