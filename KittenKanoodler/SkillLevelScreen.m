//
//  SkillLevelScreen.m
//  KittenKanoodler
//
//  Created by Christina Ramos on 10/6/14.
//  Copyright 2014 Christina Ramos. All rights reserved.
//

#import "SkillLevelScreen.h"


@implementation SkillLevelScreen
+(CCScene *) scene
{
    //Get a scene
    CCScene * scene = [CCScene node];
    
    //Construct a main screen and add it to the scene
    
    SkillLevelScreen * layer = [SkillLevelScreen node];
    [scene addChild:layer];
    
    return scene;
}

- (id) init {
    if ((self=[super init ])){
        int screenWidth = [[CCDirector sharedDirector] winSize].width;
        int screenHeight = [[CCDirector sharedDirector] winSize].height;
        
        //Display quit?
        
        NSString *quitText = @"Skill Level";
        
        CCLabelTTF* label = (CCLabelTTF*)[CCLabelTTF labelWithString:quitText fontName:@"Marker Felt" fontSize:24 dimensions:CGSizeMake(400, 100) hAlignment:UITextAlignmentLeft];
        
        [label setColor:ccc3(0,255,0)];
        
        //position the label on the center of the screen
        label.position= ccp(screenWidth/2, screenHeight/2);
        
        //add the label to the child layer
        [self addChild:label];
        
        //Add the buttons to the screen
        CCMenuItem *begButton =
        [CCMenuItemFont itemWithString:@"Beginner" target:self selector:@selector(onBeginner:)];
        
        CCMenuItem *intButton =
        [CCMenuItemFont itemWithString:@"Intermediate" target:self selector:@selector(onIntermediate:)];
        
        CCMenuItem *advButton =
        [CCMenuItemFont itemWithString:@"Advanced" target:self selector:@selector(onAdvanced:)];
        
        CCMenuItem *backButton =
        [CCMenuItemFont itemWithString:@"Back" target:self selector:@selector(onBack:)];
        
        CCMenu *skillMenu = [CCMenu menuWithItems:begButton,intButton,advButton, backButton, nil];
        [skillMenu alignItemsVertically];
        [skillMenu setPosition:ccp(screenWidth/2, screenHeight*0.25f)];
        
        //Add the menu to the layer
        [self addChild:skillMenu];
        
    }
    return self;
}
- (void) onBeginner:(CCMenuItemFont*) button{
    //nothing...yet
}


- (void) onIntermediate:(CCMenuItemFont*) button{
    //nothing...yet
}

- (void) onAdvanced:(CCMenuItemFont*) button{
    //nothing...yet
}

- (void) onBack:(CCMenuItemFont*) button{
    [[CCDirector sharedDirector] popScene];
}
@end