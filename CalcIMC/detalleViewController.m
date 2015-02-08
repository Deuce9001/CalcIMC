//
//  detalleViewController.m
//  CalcIMC
//
//  Created by Alejandra Martinez on 2/6/15.
//  Copyright (c) 2015 Alejandra Martinez. All rights reserved.
//

#import "detalleViewController.h"

@interface detalleViewController ()

@end

@implementation detalleViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    [_scroll setScrollEnabled:YES]; //activa scroll
    [_scroll setContentSize:CGSizeMake(420, 1200)]; //tamano de scroll
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
    
}

- (void) viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
    self.etiquetaIMC.text=self.resultado;
    self.etiquetaCategoria.text=self.categoria;
    self.etiquetaImagen.image=self.imagen;
}



@end
