//
//  UIScrollViewController.m
//  CalcIMC
//
//  Created by Alejandra Martinez on 2/7/15.
//  Copyright (c) 2015 Tec de Monterrey. All rights reserved.
//

#import "UIScrollViewController.h"

@interface UIScrollViewController ()

@end

@implementation ViewController
@synthesize scroller;

- (void) ViewDidLoad
{
    [super viewDidLoad];
    
    [scroller setScrollEnabled:YES];
    [scroller setContentSize:CGSizeMake(320, 1049)];
}

- (void) didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
}

@end

