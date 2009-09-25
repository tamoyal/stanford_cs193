//
//  PresenceAppDelegate.m
//  Presence
//
//  Created by Anthony Amoyal on 9/16/09.
//  Copyright University of Maryland, College Park 2009. All rights reserved.
//

#import "PresenceAppDelegate.h"
#import "PersonListViewController.h"

@implementation PresenceAppDelegate

@synthesize window;
//@synthesize viewController;

- (void)applicationDidFinishLaunching:(UIApplication *)application {    
	navController = [[UINavigationController alloc] init];
	
	PersonListViewController *plvc = [[PersonListViewController alloc] initWithNibName:@"PersonList" bundle:[NSBundle mainBundle]];
	[navController pushViewController:plvc animated:NO];
	[plvc release];
	
	[window addSubview:navController.view];
	
    // Override point for customization after application launch
    [window makeKeyAndVisible];
}


- (void)dealloc {
	[navController release];
    [window release];
    [super dealloc];
}


@end
