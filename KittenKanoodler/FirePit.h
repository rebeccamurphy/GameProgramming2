//
//  FirePit.h
//  KittenKanoodler
//
//  Created by Christina Ramos on 11/3/14.
//  Copyright 2014 Christina Ramos. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "cocos2d.h"
#import "Enemy.h"

@interface FirePit : Enemy{
    bool firstTime;
}

/** Constructor */
- (id) initAt:(CGPoint) here of:(AbstractLevel*) level_;

/* Update changes frames */
-(void) update;

@end
