//
//  PolygonView.h
//  HelloPoly
//
//  Created by Anthony Amoyal on 9/3/09.
//  Copyright 2009 University of Maryland, College Park. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "PolygonShape.h"

@interface PolygonView : UIView {
	int currentSides;
}

- (void)drawPolygon: (int)sides;
- (void)updateInterface;
+ (NSArray *)pointsForPolygonInRect:(CGRect)rect numberOfSides:(int)numberOfSides;

@end
