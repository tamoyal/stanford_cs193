#import <Foundation/Foundation.h>
#import "PolygonShape.h"

void section1();
void section2();
void section3();
void section4();
void PrintPolygonInfo();
void section_start(int);

int main (int argc, const char * argv[]) {
    NSAutoreleasePool * pool = [[NSAutoreleasePool alloc] init];
	
	section1();
	section2();
	section3();
	section4();
	PrintPolygonInfo();
	
    [pool drain];
    return 0;
}

void PrintPolygonInfo(){
	NSMutableArray *a = [[NSMutableArray alloc] init];
	
	PolygonShape *p1 = [[PolygonShape alloc] initWithNumberOfSides:4 minimumNumberOfSides:3 maximumNumberOfSides:7];
	[a addObject:p1];
	NSLog([p1 description]);
	
	PolygonShape *p2 = [[PolygonShape alloc] initWithNumberOfSides:6 minimumNumberOfSides:5 maximumNumberOfSides:9];
	[a addObject:p2];
	NSLog([p2 description]);
	
	PolygonShape *p3 = [[PolygonShape alloc] init];
	[p3 setMaximumNumberOfSides:12];
	[p3 setMinimumNumberOfSides:9];
	[p3 setNumberOfSides:12];
	[a addObject:p3];
	NSLog([p3 description]);
	
	for(PolygonShape *p in a){
		[p setNumberOfSides:10];
	}
	
	[p1 release];
	[p2 release];
	[p3 release];
	[a release];
}

void section1(){
    section_start(1);
	
	NSString *path = @"~";
	NSString *absolute_path = [path stringByExpandingTildeInPath];
	
    NSLog(@"My home folder is at %@", absolute_path);
	
	NSArray	*pathComponents = [absolute_path pathComponents];
	
	for (NSString *s in pathComponents){
		NSLog(s);
	}
}

void section2(){
    section_start(2);
	
	NSProcessInfo *pI = [NSProcessInfo processInfo];
	NSString *processName = [pI processName];
	int processID = [pI processIdentifier];
	
	NSLog(@"Process Name: '%@' Process ID: '%d'", processName, processID);
}

void section3(){
    section_start(3);
	
	NSMutableDictionary *d = [NSMutableDictionary dictionaryWithCapacity:5];
	
	[d setValue:[NSURL URLWithString:@"http://www.stanford.edu"] forKey:@"Stanford University"];
	[d setValue:[NSURL URLWithString:@"http://www.apple.com"] forKey:@"Apple"];
	[d setValue:[NSURL URLWithString:@"http://cs193p.stanford.edu"] forKey:@"CS193P"];
	[d setValue:[NSURL URLWithString:@"http://itunes.stanford.edu"] forKey:@"Stanford on iTunes U"];
	[d setValue:[NSURL URLWithString:@"http://stanfordshop.com"] forKey:@"Stanford Mall"];
	
	NSLog(@"The following keys start with 'Stanford':");
	for (NSString *key in d){
		if( [key hasPrefix:@"Stanford"] ){
			NSLog(@"Key: '%@' URL: '%@'", key, [d valueForKey:key]);
		}
	}
}

void section4(){
    section_start(4);
	
	NSString *s = @"I am an NSString";
	NSURL *u = [NSURL URLWithString:@"http://www.stanford.edu"];
	NSProcessInfo *p = [NSProcessInfo processInfo];
	NSDictionary *d = [NSDictionary dictionaryWithObjectsAndKeys:
					   @"value1", @"key1", @"value2", @"key2", nil];
	NSMutableString *ms1 = @"Mutable String 1";
	NSMutableString *ms2 = @"Mutable String 2";
	
	NSMutableArray *array = [NSArray arrayWithObjects:s, u, p, d, ms1, ms2, nil];
	
	for(id a in array){
		NSLog(@"Class Name: %@", [a class] );
		if( [a isMemberOfClass:[NSString class]] ){
			NSLog(@"Object is member of NSString: %@",a );
		}
		if( [a isKindOfClass:[NSString class]] ){
			NSLog(@"Object is kind of NSString: %@",a );
		}
		if( [a respondsToSelector:@selector(lowercaseString)] ){
			NSLog(@"Object responds to selector 'lowercaseString': %@",[a lowercaseString]);
		}
	}
}

void section_start(int i){
    NSLog(@"********************** SECTION %d **********************",i);
}
