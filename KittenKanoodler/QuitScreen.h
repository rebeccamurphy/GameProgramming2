//
//  QuitScreen.h
//  KittenKanoodler
//
//  Created by Christina Ramos on 10/6/14.
//  Copyright 2014 Christina Ramos. All rights reserved.
//

#import "CCLayer.h"
#import "cocos2d.h"
/** Quit Screen*/
@interface QuitScreen : CCLayer

/** Gets a scene to contain this layer */
+(CCScene*) scene;

/** Constructor for the quit screen*/
- (id) init;

/** Handles pressing Yes to quit*/
- (void) quitGame:(CCMenuItemFont*) button;


/** Handles pressing No to quit*/
- (void) onBack:(CCMenuItemFont*) button;

@end
