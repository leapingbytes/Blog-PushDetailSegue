//
//  LBMasterViewController.h
//  PushDetailsSegue
//
//  Created by Andrei Tchijov on 1/25/12.
//  Copyright (c) 2012 Leaping Bytes, LLC. All rights reserved.
//

#import <UIKit/UIKit.h>

@class LBDetailViewController;

@interface LBMasterViewController : UITableViewController

@property (strong, nonatomic) LBDetailViewController *detailViewController;

@end
