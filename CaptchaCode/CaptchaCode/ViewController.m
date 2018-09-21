//
//  ViewController.m
//  Captcha
//
//  Created by APPLE on 12/27/14.
//  Copyright (c) 2014 APPLE. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()<UITextFieldDelegate>

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
   
    
    
}

-(void)viewWillAppear:(BOOL)animated{
    
    
    [self reload_captcha];
    
    
    [super viewWillAppear:YES];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void)reload_captcha{
    
    @try {
        
        CGFloat hue = ( arc4random() % 256 / 256.0 );  //  0.0 to 1.0
        CGFloat saturation = ( arc4random() % 128 / 256.0 ) + 0.5;  //  0.5 to 1.0, away from white
        CGFloat brightness = ( arc4random() % 128 / 256.0 ) + 0.5;  //  0.5 to 1.0, away from black
        UIColor *color = [UIColor colorWithHue:hue saturation:saturation brightness:brightness alpha:1];
        Captcha_label.backgroundColor = color;
        
        
        i1 = arc4random() % [ar1 count];
        
        NSLog(@"RANDOM INDEX:%lu ",(unsigned long)i1);
        
        i2= arc4random() % [ar1 count];
        
        NSLog(@"RANDOM INDEX:%lu ",(unsigned long)i2);
        i3 = arc4random() % [ar1 count];
        
        NSLog(@"RANDOM INDEX:%lu ",(unsigned long)i3);
        
        i4 = arc4random() % [ar1 count];
        
        NSLog(@"RANDOM INDEX:%lu ",(unsigned long)i4);
        
        i5 = arc4random() % [ar1 count];
        
        NSLog(@"RANDOM INDEX:%lu ",(unsigned long)i5);
        
        Captcha_string = [NSString stringWithFormat:@"%@%@%@%@%@",[ar1 objectAtIndex:i1-1],[ar1 objectAtIndex:i2-1],[ar1 objectAtIndex:i3-1],[ar1 objectAtIndex:i4-1],[ar1 objectAtIndex:i5-1]];
        
        NSLog(@" Captcha String : %@",Captcha_string);
        
        Captcha_label.text = Captcha_string;
    }
    @catch (NSException *exception) {
        NSLog(@"%@",exception);
    }
    
    
    
}

- (IBAction)Reload_Action:(id)sender {
    
    Captcha_field.text = @"";
    Status_label.hidden = true;
    
    [self reload_captcha];
    
    
}

- (IBAction)Submit_Action:(id)sender {
    
}
@end
