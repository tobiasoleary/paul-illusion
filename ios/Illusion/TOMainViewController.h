//
//  TOMainViewController.h
//  Illusion
//
//  Created by Tobias O'Leary on 8/29/12.
//  Copyright (c) 2012 Tobias O'Leary. All rights reserved.
//

#import "TOFlipsideViewController.h"

@interface TOMainViewController : UIViewController <TOFlipsideViewControllerDelegate>

@property (nonatomic, strong) NSTimer *toggleColorTimer;

@property (nonatomic, assign) NSTimeInterval interval;

- (IBAction)colorButtonTapped:(id)sender;

- (IBAction)showInfo:(id)sender;

- (void)toggleColor:(NSTimer*)theTimer;

- (IBAction)intervalValueChanged:(UISlider*)sender;

@end
