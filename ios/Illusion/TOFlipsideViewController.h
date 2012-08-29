//
//  TOFlipsideViewController.h
//  Illusion
//
//  Created by Tobias O'Leary on 8/29/12.
//  Copyright (c) 2012 Tobias O'Leary. All rights reserved.
//

#import <UIKit/UIKit.h>

@class TOFlipsideViewController;

@protocol TOFlipsideViewControllerDelegate
- (void)flipsideViewControllerDidFinish:(TOFlipsideViewController *)controller;
@end

@interface TOFlipsideViewController : UIViewController

@property (weak, nonatomic) id <TOFlipsideViewControllerDelegate> delegate;

- (IBAction)done:(id)sender;

@end
