//
//  TestGameScreen.h
//  KittenKanoodler
//
//  Created by Christina Ramos on 10/8/14.
//  Copyright 2014 Christina Ramos. All rights reserved.
//

#import "CCLayer.h"
#import "cocos2d.h"

/** Main screen layer which runs the main menu */
@interface TestGameScreen : CCLayer

/** Gets a scene to contain this layer*/
+ (CCScene *) scene;

/** Constructor for the main screen */
- (id) init;

/** Handles pressing the start button*/
- (void) onGameOver: (CCMenuItemFont*) button;

/**Handles pressing the Options button*/

- (void) onPause:(CCMenuItemFont*) button;

@end
