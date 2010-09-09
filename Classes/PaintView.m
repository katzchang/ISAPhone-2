//
//  PaintView.m
//  HelloTouch
//
//  Created by katzchang on 10/09/09.
//  Copyright 2010 __MyCompanyName__. All rights reserved.
//

#import "PaintView.h"


@implementation PaintView


- (id)initWithFrame:(CGRect)frame {
    if ((self = [super initWithFrame:frame])) {
//		points = [[NSMutableArray alloc] init];
    }
    return self;
}

- (id)initWithCoder:(NSCoder *)aDecoder {
    if ((self = [super initWithCoder:aDecoder])) {
		points = [[NSMutableArray alloc] initWithCapacity:10];
    }
    return self;
}

- (void)drawRect:(CGRect)rect {
	NSLog(@"drawRect");
	CGContextRef context = UIGraphicsGetCurrentContext();
	
	for (int i = 0; i < points.count; ++i) {
		NSValue *p = [points objectAtIndex:i];
		CGPoint point = [p CGPointValue];
		
		if (i == 0) {
			CGContextMoveToPoint(context, point.x, point.y);
		} else {
			CGContextAddLineToPoint(context, point.x, point.y);
		}
	}
	CGContextStrokePath(context);
}

- (void)addPoint:(CGPoint)point {
	NSLog(@"addPoint");
	NSValue *p = [NSValue valueWithCGPoint:point];
	[points addObject:p];
	NSLog(@"%i", points.count);
}

- (void)clearPoint {
	// TODO
}

- (void)dealloc {
    [super dealloc];
}


@end
