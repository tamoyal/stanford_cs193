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

-(id)init{
	if (self = [super init]){
		//numberOfSides = 5;
		[self setNumberOfSides:5];
		[self setMinimumNumberOfSides:3];
		[self setMaximumNumberOfSides:11];
	}
	
	return self;
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
    return [self angleInDegrees];
}

-(float) angleInRadians {
    return [self angleInRadians];
}

-(NSString*) name {
    return [self name];
}


@end
