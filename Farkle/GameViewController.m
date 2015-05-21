//
//  GameViewController.m
//  Farkle
//
//  Created by Tom Carmona on 5/21/15.
//  Copyright (c) 2015 madApperz. All rights reserved.
//

#import "GameViewController.h"
#import "DieLabel.h"



@interface GameViewController ()<DieLabelDelegate>


@property (weak, nonatomic) IBOutlet DieLabel *label1;
@property (weak, nonatomic) IBOutlet DieLabel *label2;
@property (weak, nonatomic) IBOutlet DieLabel *label3;
@property (weak, nonatomic) IBOutlet DieLabel *label4;
@property (weak, nonatomic) IBOutlet DieLabel *label5;
@property (weak, nonatomic) IBOutlet DieLabel *label6;
@property DieLabel *dieLabel;

@property NSMutableArray *arrays;
@property UITapGestureRecognizer *labelTap;
@property NSMutableArray *dice;


@end

@implementation GameViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    self.dieLabel.delegate = self;

    self.arrays = [[NSMutableArray alloc]initWithObjects:self.label1,self.label2,self.label3,self.label4, self.label5, self.label6, nil];

//    self.labelOne [one addgesturerecognizer: self.gesture]
//
//
//    self.labelTap = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(dieLabelTapped:)];
//    self.labelTap.cancelsTouchesInView = NO;  // this prevents the gesture recognizers to 'block' touches

}

- (IBAction)onRollButtonTapped:(id)sender {

    for (DieLabel *dieLabel in self.arrays) {
        [dieLabel roll];
    }

}


-(void)dieLabel:(id)dieLabel onLabelTapped:(UILabel *)label{



}







@end
