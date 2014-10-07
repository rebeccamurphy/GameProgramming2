//
//  HighScoresScreen.h
//  KittenKanoodler
//
//  Created by Christina Ramos on 10/6/14.
//  Copyright 2014 Christina Ramos. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "cocos2d.h"

@interface HighScoresScreen : CCLayer
/** Gets a scene to contain this layer */
+(CCScene*) scene;

/** Constructor for the main screen*/
- (id) init;


/** Handles pressing No to quit*/
- (void) onBack:(CCMenuItemFont*) button;

@end
