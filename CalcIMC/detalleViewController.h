//
//  detalleViewController.h
//  CalcIMC
//
//  Created by Alejandra Martinez on 2/6/15.
//  Copyright (c) 2015 Alejandra Martinez. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface detalleViewController : UIViewController

@property (weak, nonatomic) IBOutlet UILabel *etiquetaIMC;
@property (strong, nonatomic) NSString *resultado;

@property (weak, nonatomic) IBOutlet UILabel *etiquetaCategoria;
@property (strong, nonatomic) NSString *categoria;

@property (weak, nonatomic) IBOutlet UIImageView *etiquetaImagen;
@property (strong, nonatomic) UIImage *imagen;

@property (weak, nonatomic) IBOutlet UIScrollView *scroll;


@end
