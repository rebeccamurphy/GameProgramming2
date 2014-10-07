//
//  MainScreen.h
//  KittenKanoodler
//
//  Created by Christina Ramos on 10/6/14.
//  Copyright 2014 Christina Ramos. All rights reserved.
//

#import "CCLayer.h"
#import "cocos2d.h"

/** Main screen layer which runs the main menu */
@interface MainScreen : CCLayer

/** Gets a scene to contain this layer*/
+ (CCScene *) scene;
    
/** Constructor for the main screen */
- (id) init;

/** Handles pressing the start button*/
- (void) onStart: (CCMenuItemFont*) button;

/**Handles pressing the Options button*/

- (void) onOptions:(CCMenuItemFont*) button;

/**Handles pressing the quit button*/

- (void) onQuit: (CCMenuItemFont*) button;

@end
