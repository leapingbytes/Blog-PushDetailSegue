//
//  LBDetailViewController.h
//  PushDetailsSegue
//
//  Created by Andrei Tchijov on 1/25/12.
//  Copyright (c) 2012 Leaping Bytes, LLC. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface LBDetailViewController : UIViewController <UISplitViewControllerDelegate>

@property (strong, nonatomic) id detailItem;

@property (strong, nonatomic) IBOutlet UILabel *detailDescriptionLabel;

@end
