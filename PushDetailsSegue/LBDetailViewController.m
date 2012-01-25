//
//  LBDetailViewController.m
//  PushDetailsSegue
//
//  Created by Andrei Tchijov on 1/25/12.
//  Copyright (c) 2012 Leaping Bytes, LLC. All rights reserved.
//

#import "LBDetailViewController.h"

@interface LBDetailViewController()

@property(nonatomic, retain) UIPopoverController* myPopoverController;

@end

@implementation LBDetailViewController

@synthesize myPopoverController=_myPopoverController;

- (void) prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    if([ segue isKindOfClass: [ UIStoryboardPopoverSegue class ]] ) {
        self.myPopoverController = ((UIStoryboardPopoverSegue*)segue).popoverController;
    }
}


- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation {
    // Return YES for supported orientations
    return YES;
}

@end
