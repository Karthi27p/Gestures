//
//  ViewController.m
//  PanGesture
//
//  Created by karthi on 1/27/17.
//  Copyright © 2017 tringapps. All rights reserved.
//

#import "ViewController.h"


@interface ViewController ()

@end

@implementation ViewController 

- (void)viewDidLoad {
    [super viewDidLoad];
    UIImageView *tapImageView = [UIImageView new];
    tapImageView.frame = CGRectMake(0, 0, 100, 100);
    tapImageView.image = [UIImage imageNamed:@"falls.jpeg"];
    [self.view addSubview:tapImageView];
    tapImageView.userInteractionEnabled = true;
    
    
    UITapGestureRecognizer *tapgesture = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(handleTap)];
    tapgesture.delegate = self;
    [tapImageView addGestureRecognizer: tapgesture];
    
    // Do any additional setup after loading the view, typically from a nib.
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (IBAction)handlePan:(UIPanGestureRecognizer *)recognizer {
    CGPoint translation = [recognizer translationInView:self.view];
    recognizer.view.center = CGPointMake(recognizer.view.center.x + translation.x,
                                         recognizer.view.center.y + translation.y);
    [recognizer setTranslation:CGPointMake(0, 0) inView:self.view];
}

- (IBAction)pinch:(UIPinchGestureRecognizer *)recognizer {
    recognizer.view.transform = CGAffineTransformScale(recognizer.view.transform, recognizer.scale, recognizer.scale);
    recognizer.scale = 0.9;

}
    

- (IBAction)rotate:(UIRotationGestureRecognizer *)recognizer {
    
    recognizer.view.transform = CGAffineTransformRotate(recognizer.view.transform, recognizer.rotation);
    recognizer.rotation = 100;
}
    
-(IBAction)handleTap
{
//    recognizer.view.transform = CGAffineTransform.MakeRotation ((float)Math.PI / 2);
//    recognizer.tapImageView.tapped = true;
//    alert = UIAlertController.Create ("Card Tapped", "This card has been tapped", UIAlertControllerStyle.Alert);
//    alert.AddAction (UIAlertAction.Create ("OK", UIAlertActionStyle.Default, null));
//    PresentViewController (alert, true, null);
    
    UILabel *label = [[UILabel alloc] init];
    label.frame = CGRectMake(10, 10, 200, 200);
    label.text = @"Image tapped";
    [self.view addSubview:label];
}


@end
