//
//  TestGameScreen.m
//  KittenKanoodler
//
//  Created by Christina Ramos on 10/6/14.
//  Copyright 2014 Christina Ramos. All rights reserved.
//

#import "TestGameScreen.h"
#import "PauseScreen.h"
#import "GameOverScreen.h"

@implementation TestGameScreen

+(CCScene *) scene
{
    //Get a scene
    CCScene * scene = [CCScene node];
    
    //Construct a main screen and add it to the scene
    
    TestGameScreen * layer = [TestGameScreen node];
    [scene addChild:layer];
    
    return scene;
}

- (id) init {
    if ((self=[super init ])){
        int screenWidth = [[CCDirector sharedDirector] winSize].width;
        int screenHeight = [[CCDirector sharedDirector] winSize].height;
        
        //Add the logo after we make it laters
        //CCSprite logo =[[CCSprite node] initWithFile:@"iball-logo2.png"];
        //[logo setPosition:ccp(screenWidth/2.0, screenHeight *.056f)];
        //[self addChild:logo]
        
        //Add the buttons to the menu
        CCMenuItem *pauseButton =
        [CCMenuItemFont itemWithString:@"Pause" target:self selector:@selector(onPause:)];
        CCMenuItem * gameOverButton =
        [CCMenuItemFont itemWithString:@"Game Over" target:self selector:@selector(onGameOver:)];
        
        CCMenu *menu = [CCMenu menuWithItems:pauseButton,gameOverButton, nil];
        [menu alignItemsVertically];
        [menu setPosition:ccp(screenWidth/2, screenHeight*0.25f)];
        
        //Add the menu to the layer
        [self addChild:menu];
        
    }
    return self;
}
- (void) onGameOver: (CCMenuItemFont*) button {
    [[CCDirector sharedDirector] pushScene:[GameOverScreen scene]];
}

- (void) onPause: (CCMenuItemFont*) button{
    [[CCDirector sharedDirector] pushScene:[PauseScreen scene]];
}
@end
