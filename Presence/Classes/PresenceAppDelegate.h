//
//  PresenceAppDelegate.h
//  Presence
//
//  Created by Anthony Amoyal on 9/16/09.
//  Copyright University of Maryland, College Park 2009. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "PersonListViewController.h"

@interface PresenceAppDelegate : NSObject <UIApplicationDelegate> {
    UIWindow *window;
	UINavigationController *navController;
}

@property (nonatomic, retain) IBOutlet UIWindow *window;

@end

