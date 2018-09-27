//
//  ViewController.m
//  Calculator
//
//  Created by Maria Aloysius on 2018-09-25.
//  Copyright © 2018 Maria. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UILabel *displayLabel;

@end

@implementation ViewController


- (void)viewDidLoad {
    [super viewDidLoad];
    isOperatorClicked =FALSE;
    firstNum =NULL;
    secondNum = NULL;
    result= NULL;
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}



- (IBAction)numberPressed:(UIButton *)sender {
    if (isOperatorClicked == FALSE) {
        if (firstNum == NULL) {
            firstNum = [NSString stringWithFormat:@"%ld",sender.tag];
            self.displayLabel.text = [NSString stringWithFormat:@"%@",firstNum];
        }
        else{
            firstNum = [NSString stringWithFormat:@"%@%ld",firstNum,sender.tag];
            self.displayLabel.text = [NSString stringWithFormat:@"%@",firstNum];

        }
    }
    else
        if(secondNum == NULL){
            secondNum = [NSString stringWithFormat:@"%ld",sender.tag];
            _displayLabel.text = secondNum;
        }
        else{
            secondNum = [NSString stringWithFormat:@"%@%ld",secondNum,sender.tag];
            _displayLabel.text = secondNum;
        }
}

- (IBAction)operatorPressed:(UIButton *)sender {
     if(anyOperator =='+'){
         if(isOperatorClicked == FALSE){
             float ans = [self.firstNum floatValue] + [self.secondNum floatValue];
         }
     }
}

- (IBAction)clearPressed:(UIButton *)sender {
}
@end
