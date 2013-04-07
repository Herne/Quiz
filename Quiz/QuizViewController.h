//
//  QuizViewController.h
//  Quiz
//
//  Created by Herne on 13-4-5.
//  Copyright (c) 2013年 Herne. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface QuizViewController : UIViewController

{
    int currentQuestionIndex;
    
    // The model objects
    NSMutableArray *questions;
    NSMutableArray *answers;
    
    // The view objects
    IBOutlet UILabel *questionField;
    IBOutlet UILabel *answerField;
}

- (IBAction)showQuestion:(id)sender;
- (IBAction)showAnswer:(id)sender;

@end
