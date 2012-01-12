//
//  CanvasAppDelegate.m
//  Canvas
//
//  Created by Gaurav Toshniwal on 10/01/12.
//  Copyright 2012 IIT Bombay. All rights reserved.
//

#import "CanvasAppDelegate.h"
#import "UIKit/UITextview.h"
#import "UIKit/UIColor.h"
#import "UIKit/UIFont.h"
#import "CanvasViewController.h"



@implementation CanvasAppDelegate
@synthesize window;

- (void)applicationDidFinishLaunching:(UIApplication *)application{

	CGRect screenBounds = [ [ UIScreen mainScreen ] applicationFrame ]; 
	CGRect windowBounds = screenBounds; 
	windowBounds.origin.y = 0.0;
	self.window = [ [ [ UIWindow alloc ] initWithFrame: screenBounds ] autorelease];
	myMainView = [ myMainView initWithFrame ];
	[ window addSubview: myMainView.view];
	[ window makeKeyAndVisible ];
}

- (void)dealloc 
{ 
	[myMainView release]; 
	[window release];
	[super dealloc];
}
@end