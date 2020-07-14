//
//  ViewController.m
//  FancyText
//
//  Created by Kapil Khatri on 08/04/19.
//  Copyright © 2019 Kapil. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    fontSize = 30;
    state = false;
}



- (IBAction)enterText:(id)sender {
    
    self.label.text = self.textField.text;
}

- (IBAction)red:(id)sender {
    
    self.label.textColor = [UIColor redColor];
}

- (IBAction)green:(id)sender {
    
    self.label.textColor = [UIColor greenColor];
}

- (IBAction)blue:(id)sender {
 
    self.label.textColor = [UIColor blueColor];
}

- (IBAction)defaultFont:(id)sender {
    
    [self.label setFont:[UIFont fontWithName:@"Party LET" size:fontSize]];
}

- (IBAction)font1:(id)sender {
    
    [self.label setFont:[UIFont fontWithName:@"Sovoye LET" size:fontSize]];
}

- (IBAction)font2:(id)sender {
    
    [self.label setFont:[UIFont fontWithName:@"Hoefler Text" size:fontSize]];
}

- (IBAction)font3:(id)sender {
    
    [self.label setFont:[UIFont fontWithName:@"Noteworthy" size:fontSize]];
}

- (IBAction)shadow:(id)sender {
    
    if(state==true)
    {
        self.label.layer.shadowOpacity=0;
        state = false;
        
        [self.shadowOutlet setTitle:@"Shadow" forState:UIControlStateNormal];
    }
    else
    {
        self.label.layer.shadowColor = [[UIColor blackColor]CGColor];
        self.label.layer.shadowOpacity = 0.25;
        self.label.layer.shadowOffset = CGSizeMake(2,2);
        self.label.layer.shadowRadius = 1.0f;
        
        state = true;
        
        [self.shadowOutlet setTitle:@"No Shadow" forState:UIControlStateNormal];
    }
}

- (IBAction)small:(id)sender {
    
    fontSize = 30;
    self.label.font = [self.label.font fontWithSize:fontSize];
}

- (IBAction)medium:(id)sender {
    fontSize = 50;
    self.label.font = [self.label.font fontWithSize:fontSize];
}

- (IBAction)large:(id)sender {
    
    fontSize = 80;
    self.label.font = [self.label.font fontWithSize:fontSize];
}

@end
