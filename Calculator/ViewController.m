//
//  ViewController.m
//  Calculator
//
//  Created by Maria Aloysius on 2018-09-25.
//  Copyright © 2018 Maria. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
- (IBAction)numberPressed:(UIButton *)sender;
- (IBAction)operatorPressed:(UIButton *)sender;
@property (weak, nonatomic) IBOutlet UILabel *solutionLabel;

@end

@implementation ViewController

bool isOperatorClicked = FALSE;
char anyOperator;
NSMutableString *firstDigit;
NSMutableString *secondDigit;

- (void)viewDidLoad {
    [super viewDidLoad];
    firstDigit = NULL;
    secondDigit = NULL;
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


- (IBAction)numberPressed:(UIButton *)sender {
    while (!isOperatorClicked) {
        
        if ([sender.titleLabel.text isEqualToString:@"1"]){
            [firstDigit stringByAppendingString:firstDigit];
        }
        else if ([sender.titleLabel.text isEqualToString:@"2"]){
            [firstDigit stringByAppendingString:firstDigit];
        }
        else if ([sender.titleLabel.text isEqualToString:@"3"]){
            [firstDigit stringByAppendingString:firstDigit];
        }
        else if ([sender.titleLabel.text isEqualToString:@"4"]){
            [firstDigit stringByAppendingString:firstDigit];
        }
        else if ([sender.titleLabel.text isEqualToString:@"5"]){
            [firstDigit stringByAppendingString:firstDigit];
        }
        else if ([sender.titleLabel.text isEqualToString:@"6"]){
            [firstDigit stringByAppendingString:firstDigit];
        }
        else if ([sender.titleLabel.text isEqualToString:@"7"]){
            [firstDigit stringByAppendingString:firstDigit];
        }
        else if ([sender.titleLabel.text isEqualToString:@"8"]){
            [firstDigit stringByAppendingString:firstDigit];
        }
        else if ([sender.titleLabel.text isEqualToString:@"9"]){
            [firstDigit stringByAppendingString:firstDigit];
        }
        else if ([sender.titleLabel.text isEqualToString:@"0"]){
            [firstDigit stringByAppendingString:firstDigit];
        }
    }
    NSLog(@"%@",firstDigit);
    self.solutionLabel.text = [NSString stringWithFormat:@"%@",firstDigit];
    
    
}

- (IBAction)operatorPressed:(UIButton *)sender {
}
@end
