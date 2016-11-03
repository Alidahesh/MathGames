//
//  MultiplicationQuestion.m
//  MathGame
//
//  Created by Suvan Ramani on 2016-11-02.
//  Copyright © 2016 suvanr. All rights reserved.
//

#import "MultiplicationQuestion.h"

@implementation MultiplicationQuestion

-(instancetype)init {
    
    if (self = [super init]) {
        [self generateQuestion];
    }
    
    return self;
    
}


// no decleration in MultiplicationQuestion.h because this is a method of the superclass Question
- (void)generateQuestion {
    
    super.realAnswer = super.rightValue * super.leftValue;
    
    super.correctAnswerString = [NSString stringWithFormat:@"%ld", (long)super.realAnswer];
    
    super.aQuestion = [NSString stringWithFormat:@"What is %ld x %ld?", (long)super.rightValue, (long)super.leftValue];
    
    NSLog(@"%@", super.aQuestion);
}

@end
