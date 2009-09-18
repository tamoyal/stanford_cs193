//
//  PersonViewController.h
//  Presence
//
//  Created by Anthony Amoyal on 9/17/09.
//  Copyright 2009 University of Maryland, College Park. All rights reserved.
//

#import <UIKit/UIKit.h>


@interface PersonViewController : UIViewController {
	IBOutlet UIImageView *avatarImageView;

	IBOutlet UILabel *statusLabel;
	IBOutlet UILabel *fullNameLabel;
	
	NSString* fullName;
	NSString* status;
	UIImage* avatar;
}

- (id)initWithPersonDetails:(NSString *)nameIn statusIn:(NSString *)statusIn avatarIn:(UIImage *)avatarIn;

@property (retain) NSString *fullName;
@property (retain) NSString *status;
@property (retain) UIImage *avatar;

@end
