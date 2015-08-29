//
//  BNRQuizViewController.m
//  Quiz
//
//  Created by Erik Fuste on 8/29/15.
//  Copyright (c) 2015 Erik Fuste. All rights reserved.
//

#import "BNRQuizViewController.h"


@implementation BNRQuizViewController

- (instancetype) initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil {
    // Call the init method implemented by the superclass
    
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    
    if (self) {
        //Create two arrays filled with questions and answers
        self.questions = @[@"From what is cognac made?" , @"WHat is 7 + 7?" , @"What is the captial of Vermont?"];
        
        self.answers = @[@"Grapes" , @"14" , @"Montpelier"];
        
        //Return the address of the new object
        
    }
    
    return self;
}

- (IBAction)showQuestion :(id)sender {
    //Step to the next questions
    self.currentQuestionIndex++;
    
    // Am I past the last question?
    if (self.currentQuestionIndex == [self.questions count]) {
        self.currentQuestionIndex = 0;
    }
    
    // Get the string at that index in the questions array
    NSString *question = self.questions[self.currentQuestionIndex];
    
    //Display the stirng in the question label
    self.questionLabel.text = question;
    
    //Reset the answer label
    self.answerLabel.text = @"???";
}

- (IBAction)showAnswer:(id)sender {
    // What is the answer to the current question
    
    NSString *answer = self.answers[self.currentQuestionIndex];
    
    self.answerLabel.text = answer;
}

@end
