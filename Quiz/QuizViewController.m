//
//  QuizViewController.m
//  Quiz
//
//  Created by Herne on 13-4-5.
//  Copyright (c) 2013年 Herne. All rights reserved.
//

#import "QuizViewController.h"

@interface QuizViewController ()

@end

@implementation QuizViewController

- (id) initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil

{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if(self){
        questions = [[NSMutableArray alloc] init];
        answers = [[NSMutableArray alloc] init];
        
        [questions addObject:@"question1"];
        [answers addObject:@"answer1"];
        
        [questions addObject:@"question2"];
        [answers addObject:@"answer2"];
        
        [questions addObject:@"question3"];
        [answers addObject:@"answer3"];
    }
        return self;
    
}
    - (IBAction)showQuestion:(id)sender
    {
        currentQuestionIndex++;
        if (currentQuestionIndex == questions.count) {
            currentQuestionIndex = 0;
        }
        
        NSString *question = [questions objectAtIndex:currentQuestionIndex];
        
        NSLog(@"displaying question: %@", question);
        
        questionField.text = question;
        
        answerField.text = @"???";
    }
    
    - (IBAction)showAnswer:(id)sender
    {
        NSString *answer = [answers objectAtIndex:currentQuestionIndex];
        
        answerField.text = answer;
    }



@end
