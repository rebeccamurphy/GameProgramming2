//
//  MainScreen.m
//  KittenKanoodler
//
//  Created by Christina Ramos on 10/6/14.
//  Copyright 2014 Christina Ramos. All rights reserved.
//

#import "MainScreen.h"
#import "QuitScreen.h"
#import "OptionsScreen.h"

@implementation MainScreen

+(CCScene *) scene
{
    //Get a scene
    CCScene * scene = [CCScene node];
    
    //Construct a main screen and add it to the scene
    
    MainScreen * layer = [MainScreen node];
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
        CCMenuItem *startButton =
            [CCMenuItemFont itemWithString:@"Start" target:self selector:@selector(onStart:)];
        CCMenuItem * optionsButton =
            [CCMenuItemFont itemWithString:@"Options" target:self selector:@selector(onOptions:)];
        CCMenuItem *quitButton =
            [CCMenuItemFont itemWithString:@"Quit" target:self selector:@selector(onQuit:)];
        
        CCMenu *menu = [CCMenu menuWithItems:startButton,optionsButton, quitButton, nil];
        [menu alignItemsVertically];
        [menu setPosition:ccp(screenWidth/2, screenHeight*0.25f)];
        
        //Add the menu to the layer
        [self addChild:menu];
        
    }
    return self;
}
- (void) onStart: (CCMenuItemFont*) button {
    //do nothing ...yet
}

- (void) onOptions: (CCMenuItemFont*) button{
    [[CCDirector sharedDirector] pushScene:[OptionsScreen scene]];
}
- (void) onQuit:(CCMenuItemFont*) button{
    [[CCDirector sharedDirector] pushScene:[QuitScreen scene]];
}
@end
