#import "Controller.h"

@implementation Controller
- (IBAction)decrease {
	int new_num_sides = [poly numberOfSides] - 1;
	[poly setNumberOfSides:new_num_sides];
	[self updateInterface];
}

- (IBAction)increase {
	int new_num_sides = [poly numberOfSides] + 1;
	[poly setNumberOfSides:new_num_sides];
	[self updateInterface];
}

- (void)updateInterface {
	numberOfSidesLabel.text = [NSString stringWithFormat:@"%d", [poly numberOfSides]];
	decreaseButton.enabled = !( [poly numberOfSides] == [poly minimumNumberOfSides] );
	increaseButton.enabled = !( [poly numberOfSides] == [poly maximumNumberOfSides] );
}

- (void)awakeFromNib { 
	poly = [[PolygonShape alloc] initWithNumberOfSides:numberOfSidesLabel.text.integerValue minimumNumberOfSides:3 maximumNumberOfSides:12];
	NSLog (@"My polygon:  %@", poly);
}

@end
