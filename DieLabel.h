//
//  DieLabel.h
//  Farkle
//
//  Created by Tom Carmona on 5/21/15.
//  Copyright (c) 2015 madApperz. All rights reserved.
//

#import <UIKit/UIKit.h>

@protocol DieLabelDelegate <NSObject>
-(void)dieLabel:(id)dieLabel onLabelTapped:(UILabel*)label;


@end


@interface DieLabel : UILabel


-(void)dieLabelTapped;

@property (nonatomic, assign)id<DieLabelDelegate> delegate;


-(void)roll;

@end
