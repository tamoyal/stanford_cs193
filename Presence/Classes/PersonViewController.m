//
//  PersonViewController.m
//  Presence
//
//  Created by Anthony Amoyal on 9/17/09.
//  Copyright 2009 University of Maryland, College Park. All rights reserved.
//

#import "PersonViewController.h"

@implementation PersonViewController
@synthesize fullName;
@synthesize status;
@synthesize avatar;

 // The designated initializer.  Override if you create the controller programmatically and want to perform customization that is not appropriate for viewDidLoad.
//- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil {
//    if (self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil]) {
//        // Custom initialization
//		self.title = @"Detail";
//    }
//    return self;
//}

- (id)initWithPersonDetails:(NSString *)nameIn statusIn:(NSString *)statusIn avatarIn:(UIImage *)avatarIn{
	if (self = [self initWithNibName:@"Person" bundle:nil]) {
        // Custom initialization
        self.title = nameIn;
        self.fullName = nameIn;
		self.status = statusIn;
		self.avatar = avatarIn;
    }
    return self;
}

/*
// Implement loadView to create a view hierarchy programmatically, without using a nib.
- (void)loadView {
}
*/


// Implement viewDidLoad to do additional setup after loading the view, typically from a nib.
- (void)viewDidLoad {
    [super viewDidLoad];
	
	statusLabel.text = self.status;
	fullNameLabel.text = self.fullName;
	avatarImageView.image = self.avatar;
}


/*
// Override to allow orientations other than the default portrait orientation.
- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation {
    // Return YES for supported orientations
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}
*/

- (void)didReceiveMemoryWarning {
	// Releases the view if it doesn't have a superview.
    [super didReceiveMemoryWarning];
	
	// Release any cached data, images, etc that aren't in use.
}

- (void)viewDidUnload {
	// Release any retained subviews of the main view.
	// e.g. self.myOutlet = nil;
}


- (void)dealloc {
	[fullName release];
	[status release];
	[avatar release];
    [super dealloc];
}


@end
