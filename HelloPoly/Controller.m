#import "Controller.h"

@implementation Controller
- (IBAction)decrease {
	[poly setNumberOfSides:([poly numberOfSides] - 1)];
	
	[self updateInterface];
}

- (IBAction)increase {
	[poly setNumberOfSides:([poly numberOfSides] + 1)];
	
	[self updateInterface];
}

- (void)updateInterface {
	numberOfSidesLabel.text = [NSString stringWithFormat:@"%d", [poly numberOfSides]];
	decreaseButton.enabled = !( [poly numberOfSides] == [poly minimumNumberOfSides] );
	increaseButton.enabled = !( [poly numberOfSides] == [poly maximumNumberOfSides] );
	polygonNameLabel.text = [poly name];
	[polygonContainer drawPolygon:[poly numberOfSides]];
	[[NSUserDefaults standardUserDefaults] setInteger:[poly numberOfSides] forKey:@"numSides"];
}

- (void)awakeFromNib { 
	int default_sides = [[NSUserDefaults standardUserDefaults] integerForKey:@"numSides"];
	NSLog(@"Default num sides is %d.",default_sides);
	if (!default_sides){
		default_sides = numberOfSidesLabel.text.integerValue;
	}
	
	poly = [[PolygonShape alloc] initWithNumberOfSides:default_sides minimumNumberOfSides:3 maximumNumberOfSides:12];
	[self updateInterface];
	NSLog (@"My polygon:  %@", poly);
}

@end
