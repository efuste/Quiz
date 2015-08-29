//
//  BNRQuizViewController.h
//  Quiz
//
//  Created by Erik Fuste on 8/29/15.
//  Copyright (c) 2015 Erik Fuste. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface BNRQuizViewController : UIViewController
@property (nonatomic, weak) IBOutlet UILabel *questionLabel;
@property (nonatomic, weak) IBOutlet UILabel *answerLabel;

@property (nonatomic) int currentQuestionIndex;

@property (nonatomic, copy) NSArray *questions;
@property (nonatomic, copy) NSArray *answers;
@end
