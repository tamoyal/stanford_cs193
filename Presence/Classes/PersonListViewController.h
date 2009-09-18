//
//  PersonListViewController.h
//  Presence
//
//  Created by Anthony Amoyal on 9/16/09.
//  Copyright 2009 University of Maryland, College Park. All rights reserved.
//

#import <UIKit/UIKit.h>


@interface PersonListViewController : UIViewController {
	IBOutlet UIImageView *a1;
	IBOutlet UIImageView *a2;
	IBOutlet UIImageView *a3;
	
	IBOutlet UIButton *b1;
	IBOutlet UIButton *b2;
	IBOutlet UIButton *b3;
	
	IBOutlet UILabel *l1;
	IBOutlet UILabel *l2;
	IBOutlet UILabel *l3;
}

- (IBAction)viewPerson:(id)sender;

@end
