//
//  FirePit.m
//  KittenKanoodler
//
//  Created by Christina Ramos on 11/3/14.
//  Copyright 2014 Christina Ramos. All rights reserved.
//

#import "FirePit.h"


@implementation FirePit

-(FirePit*) initAtX:(int) x AndY:(int) y {
    self = [super initWithFrames: @"firepit-3-32x62.png" width:32 andHeight:32];
    
    if(self) {
        [self setPosition: ccp(x, y)];
    }
    
    return self;
}
@end
