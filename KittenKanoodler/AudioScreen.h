//
//  AudioScreen.h
//  KittenKanoodler
//
//  Created by Christina Ramos on 10/6/14.
//  Copyright 2014 Christina Ramos. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "cocos2d.h"

@interface AudioScreen : CCLayer

/** Gets a scene to contain this layer */
+(CCScene*) scene;

/** Constructor for the audio screen*/
- (id) init;

/** Handles audio on/off*/

- (void) toggleAudio:(CCMenuItemFont*) button;

/** Handles pressing No to quit*/
- (void) onBack:(CCMenuItemFont*) button;

@end
