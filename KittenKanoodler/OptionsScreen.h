//
//  OptionsScreen.h
//  KittenKanoodler
//
//  Created by Christina Ramos on 10/6/14.
//  Copyright 2014 Christina Ramos. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "cocos2d.h"
/** Options Screen */
@interface OptionsScreen : CCLayer

/** Gets a scene to contain this layer */
+(CCScene*) scene;

/** Constructor for the options screen*/
- (id) init;

/** Handles pressing audio*/
- (void) audio:(CCMenuItemFont*) button;


/** Handles pressing skill level*/
- (void) skillLevel:(CCMenuItemFont*) button;

/** Handles pressing skill level*/
- (void) highScores:(CCMenuItemFont*) button;


@end
