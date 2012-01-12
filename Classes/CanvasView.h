//
//  CanvasView.h
//  Canvas
//
//  Created by Gaurav Toshniwal on 10/01/12.
//  Copyright 2012 IIT Bombay. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <Foundation/Foundation.h>

@interface CanvasView: UIView {
	UITextView *textView;
	UIButton *button;
	UIView *mainView;
}
@property(nonatomic,retain)UITextView *textView;
@property(nonatomic,retain)UIButton *button;
@property(nonatomic,retain)UIView *mainView;

- (UITextView *)drawText:(CGRect) rect;
- (UIButton *)drawButton:(CGRect) rect withText:(NSString *)text;
- (UIView *)initMainView:(CGRect) rect withBackgroundColor:(UIColor *)color;

@end
