//
//  HelloTouchViewController.m
//  HelloTouch
//
//  Created by katzchang on 10/09/09.
//  Copyright __MyCompanyName__ 2010. All rights reserved.
//

#import "HelloTouchViewController.h"

@implementation HelloTouchViewController



/*
// The designated initializer. Override to perform setup that is required before the view is loaded.
- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil {
    if ((self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil])) {
        // Custom initialization
    }
    return self;
}
*/

/*
// Implement loadView to create a view hierarchy programmatically, without using a nib.
- (void)loadView {
}
*/


/*
// Implement viewDidLoad to do additional setup after loading the view, typically from a nib.
- (void)viewDidLoad {
    [super viewDidLoad];
}
*/


/*
// Override to allow orientations other than the default portrait orientation.
- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation {
    // Return YES for supported orientations
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}
*/

- (void)didReceiveMemoryWarning {
	// Releases the view if it doesn't have a superview.
    [super didReceiveMemoryWarning];
	
	// Release any cached data, images, etc that aren't in use.
}

- (void)viewDidUnload {
	// Release any retained subviews of the main view.
	// e.g. self.myOutlet = nil;
}

- (void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event {
	NSLog(@"touchesBegan");
	UITouch *touch = [touches anyObject];
	CGPoint point = [touch locationInView:paintView];
	
	NSLog(@"%f,%f", point.x, point.y);
	
	[paintView addPoint:point];
	[paintView setNeedsDisplay];
}

- (void)touchesMoved:(NSSet *)touches withEvent:(UIEvent *)event {
	NSLog(@"touchesMoved");
	UITouch *touch = [touches anyObject];
	CGPoint point = [touch locationInView:paintView];
	
	NSLog(@"%f,%f", point.x, point.y);
	
	[paintView addPoint:point];
	[paintView setNeedsDisplay];
}


- (void)touchesEnded:(NSSet *)touches withEvent:(UIEvent *)event {
	NSLog(@"touchesEnded");
	UITouch *touch = [touches anyObject];
	CGPoint point = [touch locationInView:paintView];
	
	NSLog(@"%f,%f", point.x, point.y);
	
	[paintView addPoint:point];
	[paintView setNeedsDisplay];
}


- (void)dealloc {
    [super dealloc];
}

@end
