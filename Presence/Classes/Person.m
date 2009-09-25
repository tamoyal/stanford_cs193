//
//  Person.m
//  Presence
//
//  Created by Anthony Amoyal on 9/24/09.
//  Copyright 2009 University of Maryland, College Park. All rights reserved.
//

#import "Person.h"
#import "TwitterHelper.h"

@implementation Person

@synthesize twitterUsername, displayName, imageURL, twitterUpdates;

- (id)initWithAllData:(NSString *)twitterUsernameIn imageURL:(NSString *)imageURLIn displayName:(NSString *)displayNameIn{
	if (self = [super init]){
		[self setTwitterUsername:twitterUsernameIn];
		[self setImageURL:imageURLIn];
		[self setDisplayName:displayNameIn];
	}
	return self;
}

- (id)initWithTwitterUsername:(NSString *)twitterUsernameIn{
	NSLog(@"\n-------Initting person with Twitter Username---------");
	NSLog(@"twitter user = %@",twitterUsernameIn);
	NSDictionary* userInfo = [TwitterHelper fetchInfoForUsername:twitterUsernameIn];
	NSLog(@"name = %@", [userInfo objectForKey: @"name"]);
	NSLog(@"screen name = %@", [userInfo objectForKey: @"screen_name"]);
	NSLog(@"profile image url = %@", [userInfo objectForKey: @"profile_image_url"]);
	//NSLog(@"username = %@", [userInfo objectForKey: @"user_name"]);
	
	NSString *name = [userInfo objectForKey: @"name"];
	if(name == nil){
		name = twitterUsernameIn;
	}
	return [self initWithAllData:twitterUsernameIn imageURL:[userInfo objectForKey: @"profile_image_url"] displayName:name];
}

- (void)dealloc {
	[super dealloc];
}

@end
