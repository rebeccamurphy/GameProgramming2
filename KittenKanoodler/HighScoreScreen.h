//
//  HighScoreScreen.h
//  KittenKanoodler
//
//  Created by Christina Ramos on 10/8/14.
//  Copyright 2014 Christina Ramos. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "cocos2d.h"

@interface HighScoreScreen : CCLayer
/** Gets a scene to contain this layer */
+(CCScene*) scene;
    
/** Constructor for the high score screen*/
- (id) init;

/** Handles viewing high scores */
- (void) onHighScore:(CCMenuItemFont*) button;
    
/** Handles pressing back to return to the main screen*/
- (void) onBack:(CCMenuItemFont*) button;
    
 


@end
