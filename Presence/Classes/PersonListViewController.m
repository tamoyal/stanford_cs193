//
//  PersonListViewController.m
//  Presence
//
//  Created by Anthony Amoyal on 9/16/09.
//  Copyright 2009 University of Maryland, College Park. All rights reserved.
//

#import "PersonListViewController.h"
#import "PersonViewController.h"

@implementation PersonListViewController

- (IBAction)viewPerson:(id)sender{
	PersonViewController *details;
	
	// Instantiate a new view controller and initialize with person details
	if(sender == b1){
		details = [[PersonViewController alloc] initWithPersonDetails:l1.text statusIn:@"Hiiiii yah!" avatarIn:a1.image];
	}else if(sender == b2){
		details = [[PersonViewController alloc] initWithPersonDetails:l2.text statusIn:@"Rockin out in New Orleans" avatarIn:a2.image];
	}else if(sender == b3){
		details = [[PersonViewController alloc] initWithPersonDetails:l3.text statusIn:@"Amoyal rules" avatarIn:a3.image];
	}
	
	[self.navigationController pushViewController:details animated:YES];
	
	[details release];
}

 // The designated initializer.  Override if you create the controller programmatically and want to perform customization that is not appropriate for viewDidLoad.
- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil {
    if (self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil]) {
        // Custom initialization
		self.title = @"My People";
		UIBarButtonItem *backBarButtonItem = [[UIBarButtonItem alloc] initWithTitle:@"People" style:UIBarButtonItemStyleBordered target:nil action:nil];
		self.navigationItem.backBarButtonItem = backBarButtonItem;
		[backBarButtonItem release];
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
	
	// Create button for refreshing statuses
	UIBarButtonItem *refreshButton = [[UIBarButtonItem alloc]
		initWithTitle:@"Refresh" 
		style:UIBarButtonItemStyleBordered 
		target:self 
		action:@selector(refresh:)];
	self.navigationItem.leftBarButtonItem = refreshButton;
	[refreshButton release];
	
	// Create button for adding new people
	UIBarButtonItem *addButton = [[UIBarButtonItem alloc]
		initWithBarButtonSystemItem:UIBarButtonSystemItemAdd 
		target:self 
		action:@selector(addPerson:)];
	self.navigationItem.rightBarButtonItem = addButton;
	[addButton release];
	
	// Create a button for sorting your people in your list based on name
	// This goes in place of title
	/*
	NSArray *sortButtonItems = [NSArray arrayWithObjects:@"A->Z",@"Z->A",nil];
	
	UISegmentedControl *sortButton = [[UISegmentedControl alloc]
		initWithItems:sortButtonItems];
	
	self.navigationItem.titleView = sortButton;
	[sortButton release];
	*/
	
	l1.text = @"Joe";
	l2.text = @"Courtney";
	l3.text = @"Nicole";
	//UIImage *i1 = [UIImage imageNamed:@"joe_hiya.jpg"];
	//UIImage *i2 = [UIImage imageWithContentsOfFile:@"/Users/TAmoyal/Desktop/Projects/stanford_cs193/Presence/me_and_bird.jpg"];
	//UIImage *i3 = [UIImage imageWithContentsOfFile:@"/Users/TAmoyal/Desktop/Projects/stanford_cs193/Presence/me_and_nicole.jpg"];
	//[a1 initWithImage:i1];
	//[a2 initWithImage:i2];
	//[a3 initWithImage:i3];
	//a1.image = i1;
}

- (void)addPerson:(id)sender {
	UIAlertView *alertView = [[UIAlertView alloc] initWithTitle:@"Cannot add people yet" message:@"All the data is currently hard coded. Maybe next assignment." delegate:nil cancelButtonTitle:@"OK" otherButtonTitles:nil];
	[alertView show];
	[alertView release];
}

- (void)refresh:(id)sender {
	UIAlertView *alertView = [[UIAlertView alloc] initWithTitle:@"Cannot refresh yet" message:@"All the data is currently hard coded. Maybe next assignment." delegate:nil cancelButtonTitle:@"OK" otherButtonTitles:nil];
	[alertView show];
	[alertView release];
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
    [super dealloc];
}


@end
