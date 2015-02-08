//
//  ViewController.m
//  CalcIMC
//
//  Created by Alejandra Martinez on 2/6/15.
//  Copyright (c) 2015 Alejandra Martinez. All rights reserved.
//

#import "ViewController.h"
#import "detalleViewController.h"

@interface ViewController ()
- (double) calcularIMC;
@end

double imc;

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    self.peso.delegate=self;
    self.peso.enablesReturnKeyAutomatically=YES;
    self.estatura.delegate=self;
    self.estatura.enablesReturnKeyAutomatically=YES;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (double) calcularIMC
{
    double p=[self.peso.text doubleValue];
    double e=[self.estatura.text doubleValue];
    imc=p/(e*e);
    return imc;
}

- (NSString*)calcularCategoria
{
    
    NSString *categoria;
    if (imc<18.5) {
        categoria = @"Bajo de Peso";
    }
    else if(imc<24.99)
    {
        categoria = @"Normal";
    }
    else if(imc>=25)
    {
        categoria = @"Sobrepeso";
    }
    else if(imc>=30)
    {
        categoria = @"Obesidad";
    }
    return categoria;
}

- (NSString*) calcularImagen
{
    NSString *imagen;
    if (imc<18.5) {
        imagen = @"Bajo Peso.png";
    }
    else if(imc<24.99)
    {
        imagen = @"Normal-3.png";
    }
    else if(imc>=25)
    {
        imagen = @"Sobrepeso-1.png";
    }
    else if(imc>=30)
    {
        imagen = @"Obesidad.png";
    }
    return imagen;
}


- (void) prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    //medida de imc
    NSString* res = [NSString stringWithFormat:@"%.2f", [self calcularIMC]];
    if([segue.identifier isEqualToString:@"calcularIMC"])
    {
        //usar para identificar diferentes transiciones
    }
    detalleViewController *vistaSiguiente=segue.destinationViewController;
    vistaSiguiente.resultado=res;
    
    //categoria de peso
    NSString* categoria = [NSString stringWithFormat:@"%@", [self calcularCategoria]];
    if([segue.identifier isEqualToString:@"calcularCategoria"])
    {
        
    }
    vistaSiguiente.categoria=categoria;
    
    UIImage* imagen = [UIImage imageNamed: [self calcularImagen]];
    if([segue.identifier isEqualToString:@"calcularImagen"])
    {
        
    }
    vistaSiguiente.imagen=imagen;
}


- (BOOL) textFieldShouldReturn:(UITextField *)textField
{
    [textField resignFirstResponder];
    return TRUE;
}

- (void)textFieldDidBeginEditing:(UITextField *)textField {
    CGPoint scrollPoint = CGPointMake(0, textField.frame.origin.y-50);
    [self.scrollView setContentOffset:scrollPoint animated:YES];
}

- (void)textFieldDidEndEditing:(UITextField *)textField {
    [self.scrollView setContentOffset:CGPointZero animated:YES];
}

@end