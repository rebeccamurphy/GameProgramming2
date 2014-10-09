//
//  HighScoreScreen.m
//  KittenKanoodler
//
//  Created by Christina Ramos on 10/8/14.
//  Copyright 2014 Christina Ramos. All rights reserved.
//

#import "HighScoreScreen.h"


@implementation HighScoreScreen
+ (CCScene *) scene
{
    //get a scene
    CCScene * scene = [CCScene node];
    
    //Construct a options screen and add it to the scene
    
    HighScoreScreen *layer = [HighScoreScreen node];
    
    [scene addChild:layer];
    return scene;
    
}

- (id) init{
    if ((self = [super init ])){
        int screenWidth = [[CCDirector sharedDirector] winSize].width;
        int screenHeight = [[CCDirector sharedDirector] winSize].height;
        
        //Display Options
        
        NSString *highScoreText = @"High Score!";
        
        CCLabelTTF* label = (CCLabelTTF*)[CCLabelTTF labelWithString:highScoreText fontName:@"Marker Felt" fontSize:24 dimensions:CGSizeMake(400, 100) hAlignment:UITextAlignmentLeft];
        
        [label setColor:ccc3(255,255,255)];
        //position the label on the center of the screen
        label.position= ccp(screenWidth/2, screenHeight/2);
        
        //add the label to the child layer
        [self addChild:label];
        
        //Add the buttons to the screen
        CCMenuItem *backButton =
        [CCMenuItemFont itemWithString:@"Return to Main Menu" target:self selector:@selector(onBack:)];
        
        CCMenu *highScoreMenu = [CCMenu menuWithItems:backButton, nil];
        [highScoreMenu alignItemsVertically];
        [highScoreMenu setPosition:ccp(screenWidth/2, screenHeight*0.25f)];
        
        //Add the menu to the layer
        [self addChild:highScoreMenu];
        
    }
    return self;
}

- (void) onBack:(CCMenuItemFont*) button{
    [[CCDirector sharedDirector] popScene];
    [[CCDirector sharedDirector] popScene];
    [[CCDirector sharedDirector] popScene];

}
@end
