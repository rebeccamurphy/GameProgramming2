//
//  GameOverScreen.m
//  KittenKanoodler
//
//  Created by Christina Ramos on 10/6/14.
//  Copyright 2014 Christina Ramos. All rights reserved.
//

#import "GameOverScreen.h"
#import "MainScreen.h"


@implementation GameOverScreen
+(CCScene *) scene
{
    //Get a scene
    CCScene * scene = [CCScene node];
    
    //Construct a main screen and add it to the scene
    
    GameOverScreen * layer = [GameOverScreen node];
    [scene addChild:layer];
    
    return scene;
}

- (id) init {
    if ((self=[super init ])){
        int screenWidth = [[CCDirector sharedDirector] winSize].width;
        int screenHeight = [[CCDirector sharedDirector] winSize].height;
        
        //Display quit?
        
        NSString *gameOverText = @"GAME OVER!";
        
        CCLabelTTF* label = (CCLabelTTF*)[CCLabelTTF labelWithString:gameOverText fontName:@"Marker Felt" fontSize:24 dimensions:CGSizeMake(400, 100) hAlignment:UITextAlignmentLeft];
        
        [label setColor:ccc3(0,255,0)];
        
        //position the label on the center of the screen
        label.position= ccp(screenWidth/2, screenHeight/2);
        
        //add the label to the child layer
        [self addChild:label];
        
        //Add the buttons to the screen
        CCMenuItem *backButton =
        [CCMenuItemFont itemWithString:@"Return to Main Menu" target:self selector:@selector(onBack:)];
        
        CCMenu *gameOverMenu = [CCMenu menuWithItems:backButton, nil];
        [gameOverMenu alignItemsVertically];
        [gameOverMenu setPosition:ccp(screenWidth/2, screenHeight*0.25f)];
        
        //Add the menu to the layer
        [self addChild:gameOverMenu];
        
    }
    return self;
}
- (void) onBack:(CCMenuItemFont*) button{
    [[CCDirector sharedDirector] pushScene:[MainScreen scene]];
}
@end
