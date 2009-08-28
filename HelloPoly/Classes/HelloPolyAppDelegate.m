//
//  HelloPolyAppDelegate.m
//  HelloPoly
//
//  Created by Anthony Amoyal on 8/27/09.
//  Copyright University of Maryland, College Park 2009. All rights reserved.
//

#import "HelloPolyAppDelegate.h"

@implementation HelloPolyAppDelegate

@synthesize window;


- (void)applicationDidFinishLaunching:(UIApplication *)application {    

    // Override point for customization after application launch
    [window makeKeyAndVisible];
}


- (void)dealloc {
    [window release];
    [super dealloc];
}


@end
