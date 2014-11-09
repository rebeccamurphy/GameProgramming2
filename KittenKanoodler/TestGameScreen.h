//
//  TestGameScreen.h
//  KittenKanoodler
//
//  Created by Christina Ramos on 10/8/14.
//  Copyright 2014 Christina Ramos. All rights reserved.
//

#import "CCLayer.h"
#import "cocos2d.h"

/** Test game screen layer which runs the temporary placeholder game screen */
@interface TestGameScreen : CCLayer

/** Gets a scene to contain this layer*/
+ (CCScene *) scene;

/** Constructor for the test game screen */
- (id) init;

/** Handles pressing the game over button*/
- (void) onGameOver: (CCMenuItemFont*) button;

/**Handles pressing the pause button*/

- (void) onPause:(CCMenuItemFont*) button;

@end
