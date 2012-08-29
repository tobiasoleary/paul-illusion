//
//  TOFlipsideViewController.m
//  Illusion
//
//  Created by Tobias O'Leary on 8/29/12.
//  Copyright (c) 2012 Tobias O'Leary. All rights reserved.
//

#import "TOFlipsideViewController.h"

@interface TOFlipsideViewController ()

@end

@implementation TOFlipsideViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)viewDidUnload
{
    [super viewDidUnload];
    // Release any retained subviews of the main view.
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
  return (interfaceOrientation != UIInterfaceOrientationPortraitUpsideDown);
}

#pragma mark - Actions

- (IBAction)done:(id)sender
{
    [self.delegate flipsideViewControllerDidFinish:self];
}

@end
