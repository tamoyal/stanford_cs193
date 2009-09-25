//
//  Person.h
//  Presence
//
//  Created by Anthony Amoyal on 9/24/09.
//  Copyright 2009 University of Maryland, College Park. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Person : NSObject {
	NSString *imageURL;
	NSString *twitterUsername;
	NSString *displayName;
	NSMutableArray *twitterUpdates;
}

@property (assign) NSString *imageURL;
@property (assign) NSString *twitterUsername;
@property (assign) NSString *displayName;
@property (assign) NSMutableArray *twitterUpdates;

- (id)initWithTwitterUsername:(NSString *)twitterUsernameIn;
- (id)initWithAllData:(NSString *)twitterUsernameIn imageURL:(NSString *)imageURLIn displayName:(NSString *)displayNameIn;

@end
