//
//  DieLabel.m
//  Farkle
//
//  Created by Tom Carmona on 5/21/15.
//  Copyright (c) 2015 madApperz. All rights reserved.
//

#import "DieLabel.h"

@interface DieLabel ()

//@property UITapGestureRecognizer *tapGestureRecognizer;

@end

@implementation DieLabel

- (id) initWithCoder:(NSCoder *)aDecoder {

    self = [super initWithCoder:aDecoder];

//    self.labelTap = [[UITapGestureREcogn]]

//    self.tapGestureRecognizer = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(dieLabelTapped)];
//

    UITapGestureRecognizer *tapGestureRecognizer = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(dieLabelTapped)];
    tapGestureRecognizer.numberOfTapsRequired = 1;
    [labelOne addGestureRecognizer:tapGestureRecognizer];
    myLabel.userInteractionEnabled = YES;

    return self;


    
}

-(void)dieLabelTapped{
    NSLog(@"hello");

}


@end
