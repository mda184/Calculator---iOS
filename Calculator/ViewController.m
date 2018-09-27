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
    //result;
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}



- (IBAction)numberPressed:(UIButton *)sender {
    if (isOperatorClicked == FALSE) {
        if (firstNum == NULL) {
            firstNum = [NSString stringWithFormat:@"%i",sender.tag];
            self.displayLabel.text = [NSString stringWithFormat:@"%i",firstNum];
        }
        else{
            firstNum = [NSString stringWithFormat:@"%@%i",firstNum,sender.tag];
            displayLabel.text = firstNum;
        }
    }
    else
        if(secondNum == NULL){
            secondNum = [NSString stringWithFormat:@"%i",sender.tag];
            _displayLabel.text = secondNum;
        }
        else{
            secondNum = [NSString stringWithFormat:@"%@%i",secondNum,sender.tag];
            _displayLabel.text = secondNum;
        }
}

- (IBAction)operatorPressed:(UIButton *)sender {
   // if(anyOperator =='+'){
        
   // }
}

- (IBAction)clearPressed:(UIButton *)sender {
}
@end
