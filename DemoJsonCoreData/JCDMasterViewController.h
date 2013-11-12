//
//  JCDMasterViewController.h
//  DemoJsonCoreData
//
//  Created by Krzysztof Kunowski on 07.11.2013.
//  Copyright (c) 2013 Krzysztof Kunowski. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <CoreData/CoreData.h>

@interface JCDMasterViewController : UITableViewController <NSFetchedResultsControllerDelegate>

@property (strong, nonatomic) NSFetchedResultsController *fetchedResultsController;
@property (strong, nonatomic) NSManagedObjectContext *managedObjectContext;

-(IBAction)reload;

@end