//
//  ViewController.h
//  Calculator
//
//  Created by Maria Aloysius on 2018-09-25.
//  Copyright © 2018 Maria. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController{
    bool isOperatorClicked;
    char anyOperator;
    NSString *firstNum;
    NSString *secondNum;
    NSString *result;
}
- (IBAction)numberPressed:(UIButton *)sender;
- (IBAction)operatorPressed:(UIButton *)sender;
- (IBAction)clearPressed:(UIButton *)sender;


@end

