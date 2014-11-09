//
//  SkillLevelScreen.h
//  KittenKanoodler
//
//  Created by Christina Ramos on 10/6/14.
//  Copyright 2014 Christina Ramos. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "cocos2d.h"

@interface SkillLevelScreen : CCLayer

/** Gets a scene to contain this layer */
+(CCScene*) scene;

/** Constructor for the skill level screen*/
- (id) init;

/** Handles skill level beginner */
- (void) onBeginner:(CCMenuItemFont*) button;

/** Handles skill level intermediate */
- (void) onIntermediate:(CCMenuItemFont*) button;

/** Handles skill level advanced */
- (void) onAdvanced:(CCMenuItemFont*) button;
/** Handles pressing No to quit*/
- (void) onBack:(CCMenuItemFont*) button;

@end
