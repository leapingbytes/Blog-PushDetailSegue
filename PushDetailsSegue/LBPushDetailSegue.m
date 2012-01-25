//
//  LBPushDetailSeque.m
//  PushDetailsSegue
//
//  Created by Andrei Tchijov on 1/25/12.
//  Copyright (c) 2012 Leaping Bytes, LLC. All rights reserved.
//

#import "LBPushDetailSegue.h"

@implementation LBPushDetailSegue

- (void) perform {
    UIWindow* w = [[[ UIApplication sharedApplication ] windows ] objectAtIndex: 0 ];
    
    UISplitViewController*  root = (UISplitViewController*)w.rootViewController;    
    UIViewController*       detailsNavController = [ root.viewControllers objectAtIndex: 1 ];
    UIViewController*       detailsViewController  = [ detailsNavController.childViewControllers objectAtIndex: 0 ];     
    
    if([ detailsViewController respondsToSelector: @selector( myPopoverController ) ]) {
        UIPopoverController* popOverController = (UIPopoverController*)[ detailsViewController performSelector: @selector( myPopoverController )];
        
        [ popOverController dismissPopoverAnimated: NO ];
                
        [ detailsViewController.navigationController pushViewController: self.destinationViewController animated: YES ];
    }
}

@end
