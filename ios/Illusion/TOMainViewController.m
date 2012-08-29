//
//  TOMainViewController.m
//  Illusion
//
//  Created by Tobias O'Leary on 8/29/12.
//  Copyright (c) 2012 Tobias O'Leary. All rights reserved.
//

#import "TOMainViewController.h"

@interface TOMainViewController ()

@end

@implementation TOMainViewController


@synthesize interval;
@synthesize toggleColorTimer;

- (void)viewDidLoad
{
  [super viewDidLoad];
  [[self view] setBackgroundColor:[UIColor whiteColor]];
  [self setInterval:0.5];
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

#pragma mark - Flipside View

- (void)flipsideViewControllerDidFinish:(TOFlipsideViewController *)controller
{
  [self dismissModalViewControllerAnimated:YES];
}

- (IBAction)colorButtonTapped:(id)sender
{
  if([self toggleColorTimer] != nil) {
    return;
  }
  
  NSLog(@"Color Button Tapped - Interval: %f", [self interval]);
  
  NSTimer *timer = [NSTimer scheduledTimerWithTimeInterval:[self interval]
                                                    target:self
                                                  selector:@selector(toggleColor:)
                                                  userInfo:nil
                                                   repeats:NO];
  
  [self setToggleColorTimer:timer];
}

- (void)toggleColor:(NSTimer*)theTimer
{
  
  UIColor *colorOne = [UIColor whiteColor];
  UIColor *colorTwo = [UIColor blackColor];
  
  UIColor *currentColor = [[self view] backgroundColor];
  
  UIColor *nextColor = colorOne;
  if([currentColor isEqual:colorOne]) {
    nextColor = colorTwo;
  }
  NSLog(@"nextColor: %@", [nextColor description]);
  
  [[self view] setBackgroundColor:nextColor];
  [self setToggleColorTimer:nil];
}

- (IBAction)intervalValueChanged:(UISlider*)sender
{
  NSLog(@"New Interval: %f", [sender value]);
  [self setInterval:[sender value]];
}

- (IBAction)showInfo:(id)sender
{
  TOFlipsideViewController *controller = [[TOFlipsideViewController alloc] initWithNibName:@"TOFlipsideViewController" bundle:nil];
  controller.delegate = self;
  controller.modalTransitionStyle = UIModalTransitionStyleFlipHorizontal;
  [self presentModalViewController:controller animated:YES];
}

@end
