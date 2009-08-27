//
//  PolygonShape.h
//  WhatATool
//
//  Created by Anthony Amoyal on 8/27/09.
//  Copyright 2009 University of Maryland, College Park. All rights reserved.
//

#import <Foundation/Foundation.h>


@interface PolygonShape : NSObject {
	int numberOfSides;
	int minimumNumberOfSides;
	int maximumNumberOfSides;
}

@property int numberOfSides;
@property int minimumNumberOfSides;
@property int maximumNumberOfSides;
@property (readonly) float angleInDegrees;
@property (readonly) float angleInRadians;
@property (readonly) NSString *name;

- (void) setNumberOfSides: (int)n;
- (void) setMinimumNumberOfSides: (int)min;
- (void) setMaximumNumberOfSides: (int)max;
- (float) angleInDegrees;
- (float) angleInRadians;
- (NSString*) name;

@end
