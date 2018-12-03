//
//  ViewController.h
//  PanGesture
//
//  Created by karthi on 1/27/17.
//  Copyright © 2017 tringapps. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController <UIGestureRecognizerDelegate>
-(IBAction)handlePan: (UIPanGestureRecognizer*) recognizer;
@end

