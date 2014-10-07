//
//  AudioScreen.m
//  KittenKanoodler
//
//  Created by Christina Ramos on 10/6/14.
//  Copyright 2014 Christina Ramos. All rights reserved.
//

#import "AudioScreen.h"


@implementation AudioScreen
+(CCScene *) scene
{
    //Get a scene
    CCScene * scene = [CCScene node];
    
    //Construct a main screen and add it to the scene
    
    AudioScreen * layer = [AudioScreen node];
    [scene addChild:layer];
    
    return scene;
}

- (id) init {
    if ((self=[super init ])){
        int screenWidth = [[CCDirector sharedDirector] winSize].width;
        int screenHeight = [[CCDirector sharedDirector] winSize].height;
        
        //Display quit?
        
        NSString *quitText = @"Audio";
        
        CCLabelTTF* label = (CCLabelTTF*)[CCLabelTTF labelWithString:quitText fontName:@"Marker Felt" fontSize:24 dimensions:CGSizeMake(400, 100) hAlignment:UITextAlignmentLeft];
        
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
    //nothing to be done... yet
}
- (void) onBack:(CCMenuItemFont*) button{
    [[CCDirector sharedDirector] popScene];
}
@end
