//
//  ViewController.h
//  CaptchaCode
//
//  Created by ronak on 8/1/17.
//  Copyright © 2017 com.zaptechsolutions. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController
{
    NSArray *ar1;
    NSString *Captcha_string;
    NSUInteger i1,i2,i3,i4,i5;
    IBOutlet UILabel *Captcha_label;
    IBOutlet UITextField *Captcha_field;
    UIAlertController *Captcha_alert;
    
    IBOutlet UILabel *Status_label;
    IBOutlet UIButton *reloadOut;
    IBOutlet UIButton *SubmitOut;
}
- (IBAction)Reload_Action:(id)sender;
- (IBAction)Submit_Action:(id)sender;



@end

