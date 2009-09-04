#import <UIKit/UIKit.h>
#import <Foundation/Foundation.h>
#import "PolygonShape.h"
#import "PolygonView.h"

@interface Controller : NSObject {
    IBOutlet UIButton *decreaseButton;
    IBOutlet UIButton *increaseButton;
    IBOutlet UILabel *numberOfSidesLabel;
	IBOutlet PolygonShape *poly;
	
	IBOutlet PolygonView *polygonContainer;
	IBOutlet UILabel *polygonNameLabel;
}

- (IBAction)decrease;
- (IBAction)increase;
- (void)updateInterface;
@end
