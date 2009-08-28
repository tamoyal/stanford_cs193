//
//  PolygonShape.m
//  WhatATool
//
//  Created by Anthony Amoyal on 8/27/09.
//  Copyright 2009 University of Maryland, College Park. All rights reserved.
//

#import "PolygonShape.h"


@implementation PolygonShape
	
@synthesize numberOfSides;
@synthesize minimumNumberOfSides;
@synthesize maximumNumberOfSides;

- (id)initWithNumberOfSides:(int)sides minimumNumberOfSides:(int)min maximumNumberOfSides:(int)max{
	if (self = [super init]){
		[self setMinimumNumberOfSides:min];
		[self setMaximumNumberOfSides:max];
		[self setNumberOfSides:sides];
	}
	return self;
}

- (id)init{
	return [self initWithNumberOfSides:5 minimumNumberOfSides:3 maximumNumberOfSides:12];
}

- (void)dealloc {
	NSLog(@"Dealloc is being called on a Polygon object.");
	[super dealloc];
}

-(void) setNumberOfSides: (int)n{
	if ( (n >= minimumNumberOfSides)&&(n <= maximumNumberOfSides) ){
		numberOfSides = n;
	}else{
		NSLog(@"Invalid number of sides: %d is not between %d and %d inclusive.",n,minimumNumberOfSides,maximumNumberOfSides);
	}
}

-(void) setMinimumNumberOfSides: (int)min{
	if ( min > 2 ){
		minimumNumberOfSides = min;
	}else{
		NSLog(@"Invalid minimum number of sides: Must be greater than 2.");
	}
}

-(void) setMaximumNumberOfSides: (int)max{
	if ( max <= 12 ){
		maximumNumberOfSides = max;
	}else{
		NSLog(@"Invalid maximum number of sides: Must be less than or equal to 12.");
	}
}

-(float) angleInDegrees {
    return (180 * (numberOfSides - 2)) / numberOfSides;
}

-(float) angleInRadians {
    return [self angleInDegrees] * (M_PI / 180);
}

-(NSString*) name {
	NSDictionary *d = [NSDictionary dictionaryWithObjectsAndKeys:
						  @"Triangle",		[NSNumber numberWithInt:3],
						  @"Square",		[NSNumber numberWithInt:4],
						  @"Pentagon",		[NSNumber numberWithInt:5],
						  @"Hexagon",		[NSNumber numberWithInt:6],
						  @"Heptagon",		[NSNumber numberWithInt:7],
						  @"Octagon",		[NSNumber numberWithInt:8],
						  @"Nonagon",		[NSNumber numberWithInt:9],
						  @"Decagon",		[NSNumber numberWithInt:10],
						  @"Undecagon",		[NSNumber numberWithInt:11],
						  @"Dodecagon",		[NSNumber numberWithInt:12],
						  nil];
	
    return [d objectForKey:[NSNumber numberWithInt:numberOfSides]];
}

- (NSString*)description {
	return [NSString stringWithFormat: @"Hello, I am a %d-sided polygon (aka a %@) with angles of %.2f degrees (%.4f radians).", numberOfSides, [self name], [self angleInDegrees], [self angleInRadians]];
}

@end
