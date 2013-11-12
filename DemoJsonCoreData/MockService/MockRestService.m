//
// Created by Krzysztof Kunowski on 12/11/13.
// Copyright (c) 2013 Krzysztof Kunowski. All rights reserved.
//

#import "MockRestService.h"
#import "LSNocilla.h"


@implementation MockRestService {

}

+(NSString *)responseForFile:(NSString *)name {
    NSBundle *testBundle = [NSBundle bundleForClass:[self class]];
    NSString *testBundlePath = [testBundle pathForResource:name ofType:@"json"];
    NSError *error;
    return [NSString stringWithContentsOfFile:testBundlePath encoding:NSUTF8StringEncoding error:&error];
}

+ (void)start {
    [[LSNocilla sharedInstance] start];

    NSString *contactsUrl = [NSString stringWithFormat:@"%@/contacts", baseAPIUrl];
    NSString *contactsResponseBody = [self responseForFile:@"Contacts"];

    stubRequest(@"GET", contactsUrl).andReturn(200).withHeaders(@{@"Content-Type" : @"application/json"}).withBody(contactsResponseBody);
    NSLog(@"[mocked url]: %@", contactsUrl);

}

+ (void)stop {
    [[LSNocilla sharedInstance] clearStubs];
    [[LSNocilla sharedInstance] stop];
}

@end