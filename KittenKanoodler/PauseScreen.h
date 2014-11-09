//
//  PauseScreen.h
//  KittenKanoodler
//
//  Created by Christina Ramos on 10/8/14.
//  Copyright 2014 Christina Ramos. All rights reserved.
//

#import "CCLayer.h"
#import "cocos2d.h"
/** Quit Screen*/
@interface PauseScreen : CCLayer
    
/** Gets a scene to contain this layer */
+(CCScene*) scene;
    
/** Constructor for the pause screen*/
- (id) init;
    
/** Handles pressing Resume to continue playing*/
- (void) onResume:(CCMenuItemFont*) button;
    
    
/** Handles pressing Return to Main Menu to quit the current game*/
- (void) onQuit:(CCMenuItemFont*) button;
@end


