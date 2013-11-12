//
//  Contact.h
//  DemoJsonCoreData
//
//  Created by Krzysztof Kunowski on 07.11.2013.
//  Copyright (c) 2013 Krzysztof Kunowski. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <CoreData/CoreData.h>

@interface Contact : NSManagedObject

@property (nonatomic, strong) NSString * firstName;
@property (nonatomic, strong) NSString * lastName;
@property (nonatomic, strong) NSNumber * identifier;

+ (void)contactWithName:(NSString *)name completionHandler:(void(^)(Contact *contact, NSError *error))completionHandler;

+ (void)allContactsWithCompletionHandler:(void(^)(NSArray *contacts, NSError *error))completionHandler;

@end
