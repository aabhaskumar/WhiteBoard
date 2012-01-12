//
//  CanvasView.m
//  Canvas
//
//  Created by Gaurav Toshniwal on 10/01/12.
//  Copyright 2012 IIT Bombay. All rights reserved.
//

#import "CanvasView.h"


@implementation CanvasView

@synthesize textView;
@synthesize button;
@synthesize mainView;

- (UIView *) initMainView:(CGRect)rect withBackgroundColor:(UIColor *)color{
	mainView = [[UIView alloc] initWithFrame:rect];
	[mainView setBackgroundColor:color];
	//[mainView addGestureRecognizer:[[UIPanGestureRecognizer alloc] initWithTarget:self action:@selector(drawRect)]];
	return mainView;
}
- (UITextView *) drawText:(CGRect)rect {
	textView = [ [ UITextView alloc] initWithFrame:rect ];
	textView.text = @"Text";
	textView.font = [UIFont systemFontOfSize:40.0];
	textView.textAlignment=UITextAlignmentCenter;
	
	return textView;
}

- (UIButton *) drawButton:(CGRect) rect withText:(NSString *)text{

	button = [UIButton buttonWithType:UIButtonTypeRoundedRect];
	[button setFrame:rect];
	[button setTitle:text forState:UIControlStateNormal];
	[button setFont:[UIFont systemFontOfSize:20.0]];
		
	 return button;
	
}
/*
-(void)drawRect:(UIPanGestureRecognizer *)gesture
{

	if((gesture.state == UIGestureRecognizerStateChanged ||
		gesture.state == UIGestureRecognizerStateEnded)){
		CGPoint size = [gesture translationInView:self.view];
		//[self drawText:CGRectMake(100, 100, size.x, size.y)];
	}
		
}*/

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

- (void)dealloc {
    [super dealloc];
}


@end
