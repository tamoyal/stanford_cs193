//
//  PolygonView.m
//  HelloPoly
//
//  Created by Anthony Amoyal on 9/3/09.
//  Copyright 2009 University of Maryland, College Park. All rights reserved.
//

#import "PolygonView.h"

@implementation PolygonView

- (void)updateInterface {
	[self setNeedsDisplay];
}

- (void)drawRect:(CGRect)rect{
	CGContextRef context = UIGraphicsGetCurrentContext();
	
	UIColor *lightBlue = [UIColor colorWithRed:(134.0 / 255.0) green:(163.0 / 255.0) blue:(196.0 / 255.0) alpha: 1];
	UIColor *lightGray = [UIColor colorWithRed:(210.0 / 255.0) green:(210.0 / 255.0) blue:(210.0 / 255.0) alpha: 1];
	
	[lightGray set];
	UIRectFill ([self bounds]);
	[[UIColor blackColor] set];
	UIRectFrame ([self bounds]);
	
	if( [myPolygon numberOfSides] ){
		CGContextBeginPath (context);
		NSLog(@"Drawing the PolygonView! My polygon has %d sides.", [myPolygon numberOfSides]);
		NSArray *points = [PolygonView pointsForPolygonInRect:[self bounds] numberOfSides:[myPolygon numberOfSides]];
		
		int first = 1;
		for(NSValue *v in points){
			CGPoint p = [v CGPointValue];
			if(first){
				CGContextMoveToPoint (context, p.x, p.y);
				first = 0;
			}else{
				CGContextAddLineToPoint (context, p.x, p.y); 
			}
		}
		
		CGContextClosePath(context);
		
		[lightBlue setFill]; 
		[[UIColor blackColor] setStroke];
		
		CGContextDrawPath (context, kCGPathFillStroke);
	}
}

- (void)drawPolygon: (int)sides{
	[self updateInterface];
}

+ (NSArray *)pointsForPolygonInRect:(CGRect)rect numberOfSides:(int)numberOfSides { 
	CGPoint center = CGPointMake(rect.size.width / 2.0, rect.size.height / 2.0); 
	float radius = 0.8 * center.x; 
	NSMutableArray *result = [NSMutableArray array]; 
	float angle = (2.0 * M_PI) / numberOfSides; 
	float exteriorAngle = M_PI - angle; 
	float rotationDelta = angle - (0.5 * exteriorAngle); 
	
	for (int currentAngle = 0; currentAngle < numberOfSides; currentAngle++) { 
		float newAngle = (angle * currentAngle) - rotationDelta; 
		float curX = cos(newAngle) * radius; 
		float curY = sin(newAngle) * radius; 
		[result addObject:[NSValue valueWithCGPoint:CGPointMake(center.x + curX, 
																center.y + curY)]]; 
	} 
	
	return result; 
}
@end
