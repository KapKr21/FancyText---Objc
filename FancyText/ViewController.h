//
//  ViewController.h
//  FancyText
//
//  Created by Kapil Khatri on 08/04/19.
//  Copyright © 2019 Kapil. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController
{
    CGFloat fontSize;
    BOOL state;
}
@property (weak, nonatomic) IBOutlet UILabel *label;
@property (weak, nonatomic) IBOutlet UIButton *shadowOutlet;
@property (weak, nonatomic) IBOutlet UITextField *textField;



- (IBAction)enterText:(id)sender;


- (IBAction)red:(id)sender;
- (IBAction)green:(id)sender;
- (IBAction)blue:(id)sender;

- (IBAction)defaultFont:(id)sender;
- (IBAction)font1:(id)sender;
- (IBAction)font2:(id)sender;
- (IBAction)font3:(id)sender;

- (IBAction)shadow:(id)sender;

- (IBAction)small:(id)sender;
- (IBAction)medium:(id)sender;
- (IBAction)large:(id)sender;




@end

