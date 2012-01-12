//
//  CanvasViewController.h
//  Canvas
//
//  Created by Gaurav Toshniwal on 10/01/12.
//  Copyright 2012 IIT Bombay. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "CanvasView.h"
#import <QuartzCore/CAAnimation.h>

@interface CanvasViewController : UIViewController{
	UIView *mainView;
	CanvasView *accessView;
	UIView *leftView;
	UIView *upView;
	UIView *rightView;
	UIView *downView;
	//CATransition *transition;
	CALayer *mainLayer;
}
@property(nonatomic,retain) CanvasView *accessView;
@property(nonatomic,retain) UIView *leftView;
@property(nonatomic,retain) UIView *upView;
@property(nonatomic,retain) UIView *rightView;
@property(nonatomic,retain) UIView *downView;
//@property(nonatomic,readonly) CATransition *transition;
@property(nonatomic,retain) UIView *mainView; 
@end
