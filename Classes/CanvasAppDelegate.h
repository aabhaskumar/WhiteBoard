//
//  CanvasAppDelegate.h
//  Canvas
//
//  Created by Gaurav Toshniwal on 10/01/12.
//  Copyright 2012 IIT Bombay. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "CanvasViewController.h"

@interface CanvasAppDelegate : NSObject <UIApplicationDelegate, UITextViewDelegate>
{
	UIWindow *window;
	CanvasViewController *myMainView;
}

@property (nonatomic, retain) IBOutlet UIWindow *window;
@end

