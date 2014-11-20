//
//  FirePit.m
//  KittenKanoodler
//
//  Created by Christina Ramos on 11/3/14.
//  Copyright 2014 Christina Ramos. All rights reserved.
//

#import "FirePit.h"


@implementation FirePit

- (id) initAt:(CGPoint) here of:(AbstractLevel*) level_ {
    [super initWithFrames: @"firepit-3-32x62.png" width:32 andHeight:62];
    
    state = STATE_ALIVE;
    
    xSpeed = 0;
    
    ySpeed = 0;
    
    [self setPosition:here];
    
    level = level_;
    
    return self;
}

- (void) update {
    [super update];
    
    if(self.frameNumber > 2) {
        self.frameNumber = 0;
    }
    else
        self.frameNumber++;
    return;
}


@end
