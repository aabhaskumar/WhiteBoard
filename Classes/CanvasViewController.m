//
//  CanvasViewController.m
//  Canvas
//
//  Created by Gaurav Toshniwal on 10/01/12.
//  Copyright 2012 IIT Bombay. All rights reserved.
//
#import <UIKit/UIKit.h>
#import "CanvasViewController.h"
#import <QuartzCore/QuartzCore.h>

@implementation CanvasViewController
@synthesize accessView;
@synthesize leftView;
@synthesize upView;
@synthesize rightView;
@synthesize downView;
@synthesize mainView;
//@synthesize transition;

- (id)initWithFrame:(CGRect) rect 
{ 
	
	accessView = [[CanvasView alloc] init];
	self.view=[accessView initMainView:rect withBackgroundColor:[UIColor whiteColor]];
	
	leftView = [accessView initMainView:CGRectMake(0,0, rect.size.width/10, rect.size.height) withBackgroundColor:[UIColor blueColor]];

	upView=[accessView initMainView:CGRectMake(0,0, rect.size.width, rect.size.height/20) withBackgroundColor:[UIColor blueColor]];
	
	//downView = [accessView initMainView:[CGRect() withBackgroundColor:[UIColor blueColor]];
	
	//[self.view addSubview:[accessView drawText:CGRectMake(100,100,500,100)]];
	
	UIButton *buttonl=[accessView drawButton:CGRectMake(rect.size.width/2 - 80,rect.size.height/2 - 25,50,50) withText:@"left"];
	[buttonl addTarget:self action:@selector(animateLeft:) forControlEvents:UIControlEventTouchUpInside];

	UIButton *buttonu=[accessView drawButton:CGRectMake(rect.size.width/2 - 25,rect.size.height/2 - 55,50,50) withText:@"up"];
	[buttonu addTarget:self action:@selector(animateUp) forControlEvents:UIControlEventTouchUpInside];
	
	UIButton *buttonr=[accessView drawButton:CGRectMake(rect.size.width/2 + 30,rect.size.height/2 - 25,50,50) withText:@"right"];
	UIButton *buttond=[accessView drawButton:CGRectMake(rect.size.width/2 - 25,rect.size.height/2 + 5,50,50) withText:@"down"];

	[self.view addSubview:buttond];
	[self.view addSubview:buttonu];
	[self.view addSubview:buttonl];
	[self.view addSubview:buttonr];
	
	mainLayer = self.view.layer;
	//[ mainLayer addSublayer: leftView.layer ]; 
	[ mainLayer addSublayer: upView.layer ]; 
	[ mainLayer addSublayer: rightView.layer ];
	[ mainLayer addSublayer: downView.layer ];
	
	
	return self;
}
-(void) addTransitionForLayer:(UIView *) viewToAnimate ofType:(NSString *)animType{
	
	CATransition *transition = [CATransition animation];
	transition.timingFunction = [CAMediaTimingFunction functionWithName:kCAMediaTimingFunctionEaseInEaseOut];
	transition.type = animType;
	transition.subtype = kCATransitionFromLeft;
	transition.duration = 1.0;
	[viewToAnimate.layer addAnimation:transition forKey:kCATransitionMoveIn];
	
}
- (void)dealloc 
{ 
	[ super dealloc ];
} 
// Override to allow orientations other than the default portrait orientation.
- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation {
    return YES;
}

- (void)didReceiveMemoryWarning {
	// Releases the view if it doesn't have a superview.
    [super didReceiveMemoryWarning];
	
	// Release any cached data, images, etc that aren't in use.
}

- (void)viewDidUnload {
	// Release any retained subviews of the main view.
	// e.g. self.myOutlet = nil;
}
-(void)animateLeft:(id)sender 
{
	if(leftView.layer.hidden==NO){
		[self addTransitionForLayer:leftView ofType:@"kCAAnimationMoveIn"];
		leftView.layer.hidden=YES;
		[mainLayer addSublayer:leftView.layer];
		
	}
	else{
		[leftView.layer removeFromSuperlayer];
		leftView.layer.hidden=NO;
	}
}

-(void)animateUp
{
	upView.layer.hidden = (upView.layer.hidden == NO) ? YES : NO;
}

@end
