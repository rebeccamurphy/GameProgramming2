//
//  GameOverScreen.h
//  KittenKanoodler
//
//  Created by Christina Ramos on 10/8/14.
//  Copyright 2014 Christina Ramos. All rights reserved.
//

#import "CCLayer.h"
#import "cocos2d.h"
/** Game Over Screen*/
@interface GameOverScreen : CCLayer

/** Gets a scene to contain this layer */
+(CCScene*) scene;

/** Constructor for the game over screen*/
- (id) init;

/** Handles pressing Return to Main Menu to quit*/
- (void) onBack:(CCMenuItemFont*) button;

@end
