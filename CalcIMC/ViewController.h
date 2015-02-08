//
//  ViewController.h
//  CalcIMC
//
//  Created by Alejandra Martinez on 2/6/15.
//  Copyright (c) 2015 Alejandra Martinez. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController<UITextFieldDelegate>

@property (weak, nonatomic) IBOutlet UITextField *peso;
@property (weak, nonatomic) IBOutlet UITextField *estatura;
@property (weak, nonatomic) IBOutlet UIScrollView *scrollView;

@end

