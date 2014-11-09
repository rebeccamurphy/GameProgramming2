//
//  AudioScreen.m
//  KittenKanoodler
//
//  Created by Christina Ramos on 10/6/14.
//  Copyright 2014 Christina Ramos. All rights reserved.
//

#import "AudioScreen.h"
#import "Options.h"
#import "SimpleAudioEngine.h"

// Theme songs
//#define THEME_SONG @"Mindblogger.mp3"
// "The River War Orginal Mix" by PANG! see http://www.beatport.com/track/the-river-war-original-mix/4225775
#define THEME_SONG @"4225775_The_River_War_Original_Mix.mp3"

@implementation AudioScreen
+(CCScene *) scene
{
    //Get a scene
    CCScene * scene = [CCScene node];
    
    //Construct a audio screen and add it to the scene
    
    AudioScreen * layer = [AudioScreen node];
    [scene addChild:layer];
    
    return scene;
}

- (id) init {
    if ((self=[super init ])){
        int screenWidth = [[CCDirector sharedDirector] winSize].width;
        int screenHeight = [[CCDirector sharedDirector] winSize].height;
        
        //Display Audio
        
        NSString *audioText = @"Audio";
        
        CCLabelTTF* label = (CCLabelTTF*)[CCLabelTTF labelWithString:audioText fontName:@"Marker Felt" fontSize:24 dimensions:CGSizeMake(400, 100) hAlignment:UITextAlignmentLeft];
        
        [label setColor:ccc3(0,255,0)];
        
        //position the label on the center of the screen
        label.position= ccp(screenWidth/2, screenHeight/2);
        
        //add the label to the child layer
        [self addChild:label];
        
        //Add the buttons to the screen
        CCMenuItem *toggleButton =
        [CCMenuItemFont itemWithString:@"Toggle Audio" target:self selector:@selector(toggleAudio:)];
        CCMenuItem *backButton =
        [CCMenuItemFont itemWithString:@"Back" target:self selector:@selector(onBack:)];
        
        CCMenu *audioMenu = [CCMenu menuWithItems:toggleButton, backButton, nil];
        [audioMenu alignItemsVertically];
        [audioMenu setPosition:ccp(screenWidth/2, screenHeight*0.25f)];
        
        //Add the menu to the layer
        [self addChild:audioMenu];
        
    }
    return self;
}
- (void) toggleAudio:(CCMenuItemFont*) button{
    if([Options soundsOn]) {
        [Options enableSounds:FALSE];
        
        [[SimpleAudioEngine sharedEngine] stopBackgroundMusic];
    }
    else {
        [Options enableSounds:TRUE];
        
        [[SimpleAudioEngine sharedEngine] playBackgroundMusic:THEME_SONG loop:true];
    }
}
- (void) onBack:(CCMenuItemFont*) button{
    [[CCDirector sharedDirector] popScene];
}
@end
