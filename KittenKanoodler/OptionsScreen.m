//
//  OptionsScreen.m
//  KittenKanoodler
//
//  Created by Christina Ramos on 10/6/14.
//  Copyright 2014 Christina Ramos. All rights reserved.
//

#import "OptionsScreen.h"
#import "AudioScreen.h"
#import "HighScoresScreen.h"
#import "SkillLevelScreen.h"

@implementation OptionsScreen
+ (CCScene *) scene
{
    //get a scene
    CCScene * scene = [CCScene node];
    
    //Construct a options screen and add it to the scene
    
    OptionsScreen *layer = [OptionsScreen node];
    
    [scene addChild:layer];
    return scene;
    
}

- (id) init{
    if ((self = [super init ])){
        int screenWidth = [[CCDirector sharedDirector] winSize].width;
        int screenHeight = [[CCDirector sharedDirector] winSize].height;
        
        //Display Options
        
        NSString *optionsText = @"Options";
        
        CCLabelTTF* label = (CCLabelTTF*)[CCLabelTTF labelWithString:optionsText fontName:@"Marker Felt" fontSize:24 dimensions:CGSizeMake(400, 100) hAlignment:UITextAlignmentLeft];
        
        [label setColor:ccc3(255,255,255)];
        //position the label on the center of the screen
        label.position= ccp(screenWidth/2, screenHeight/2);
        
        //add the label to the child layer
        [self addChild:label];
        
        //Add the buttons to the screen
        CCMenuItem *audioButton =
        [CCMenuItemFont itemWithString:@"Audio" target:self selector:@selector(audio:)];
        
        CCMenuItem *skillLevelButton =
        [CCMenuItemFont itemWithString:@"Skill Level" target:self selector:@selector(skillLevel:)];
        
        CCMenuItem * highScoresButton =
        [CCMenuItemFont itemWithString:@"High Scores" target:self selector:@selector(highScores:)];
        
        CCMenuItem *backButton =
        [CCMenuItemFont itemWithString:@"Back" target:self selector:@selector(onBack:)];
        
        CCMenu *optionsMenu = [CCMenu menuWithItems:audioButton,skillLevelButton, highScoresButton, backButton, nil];
        [optionsMenu alignItemsVertically];
        [optionsMenu setPosition:ccp(screenWidth/2, screenHeight*0.25f)];
        
        //Add the menu to the layer
        [self addChild:optionsMenu];
        
    }
    return self;
}

- (void) audio:(CCMenuItemFont*) button{
    [[CCDirector sharedDirector] pushScene:[AudioScreen scene]];
}


- (void) skillLevel:(CCMenuItemFont*) button{
    [[CCDirector sharedDirector] pushScene:[SkillLevelScreen scene]];
}

- (void) highScores:(CCMenuItemFont*) button{
    [[CCDirector sharedDirector] pushScene:[HighScoresScreen scene]];
}
- (void) onBack:(CCMenuItemFont*) button{
    [[CCDirector sharedDirector] popScene];
}
@end
