//
//  JCDAppDelegate.m
//  DemoJsonCoreData
//
//  Created by Krzysztof Kunowski on 07.11.2013.
//  Copyright (c) 2013 Krzysztof Kunowski. All rights reserved.
//

#import "JCDAppDelegate.h"
#import "JCDMasterViewController.h"
#import "JCDBackgroundQueue.h"
#import "SLCoreDataStack.h"
#import "JCDStoreManager.h"
#import "Contact.h"
#import "MockRestService.h"

@implementation JCDAppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{

    [MockRestService start];

    // Override point for customization after application launch.
    UINavigationController *navigationController = (UINavigationController *)self.window.rootViewController;

    JCDMasterViewController *controller = (JCDMasterViewController *)navigationController.topViewController;
    [NSManagedObject setDefaultBackgroundQueue:[JCDBackgroundQueue sharedInstance]];
    [NSManagedObject registerDefaultBackgroundThreadManagedObjectContextWithAction:^NSManagedObjectContext *{
        return [JCDStoreManager sharedInstance].backgroundThreadManagedObjectContext;
    }];
    [NSManagedObject registerDefaultMainThreadManagedObjectContextWithAction:^NSManagedObjectContext *{
        return [JCDStoreManager sharedInstance].mainThreadManagedObjectContext;
    }];

    return YES;
}
							
- (void)applicationWillResignActive:(UIApplication *)application
{
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.

}

- (void)applicationDidEnterBackground:(UIApplication *)application
{
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later. 
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.

}

- (void)applicationWillEnterForeground:(UIApplication *)application
{
    // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.

}

- (void)applicationDidBecomeActive:(UIApplication *)application
{
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.

}

- (void)applicationWillTerminate:(UIApplication *)application
{
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
    [MockRestService stop];
    [self saveContext];

}

- (void)saveContext
{
    // TODO

}

@end