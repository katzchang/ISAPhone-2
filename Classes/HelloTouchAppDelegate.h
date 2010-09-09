//
//  HelloTouchAppDelegate.h
//  HelloTouch
//
//  Created by katzchang on 10/09/09.
//  Copyright __MyCompanyName__ 2010. All rights reserved.
//

#import <UIKit/UIKit.h>

@class HelloTouchViewController;

@interface HelloTouchAppDelegate : NSObject <UIApplicationDelegate> {
    UIWindow *window;
    HelloTouchViewController *viewController;
}

@property (nonatomic, retain) IBOutlet UIWindow *window;
@property (nonatomic, retain) IBOutlet HelloTouchViewController *viewController;

@end

