//
//  TOAppDelegate.h
//  Illusion
//
//  Created by Tobias O'Leary on 8/29/12.
//  Copyright (c) 2012 Tobias O'Leary. All rights reserved.
//

#import <UIKit/UIKit.h>

@class TOMainViewController;

@interface TOAppDelegate : UIResponder <UIApplicationDelegate>

@property (strong, nonatomic) UIWindow *window;

@property (strong, nonatomic) TOMainViewController *mainViewController;

@end
