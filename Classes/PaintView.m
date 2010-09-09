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

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

- (void)addPoint:(CGPoint)point {
	NSValue *p = [NSValue valueWithCGPoint:point];
	[points addObject:p];
}

- (void)clearPoint {
	// TODO
}

- (void)dealloc {
    [super dealloc];
}


@end
