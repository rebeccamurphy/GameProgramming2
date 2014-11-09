//
//  HighScoreScreen.m
//  KittenKanoodler
//
//  Created by Christina Ramos on 10/8/14.
//  Copyright 2014 Christina Ramos. All rights reserved.
//

#import "HighScoreScreen.h"
#import "Score.h"
#import "HighScoresScreen.h"


@implementation HighScoreScreen
+ (CCScene *) scene
{
    //get a scene
    CCScene * scene = [CCScene node];
    
    //Construct a high score screen and add it to the scene
    
    HighScoreScreen *layer = [HighScoreScreen node];
    
    [scene addChild:layer];
    return scene;
    
}

- (id) init{
    if ((self = [super init ])){
        int screenWidth = [[CCDirector sharedDirector] winSize].width;
        int screenHeight = [[CCDirector sharedDirector] winSize].height;
        
        //Display Options
        
        NSString *highScoreText = @"You got a new High Score!";
        
        CCLabelTTF* label = (CCLabelTTF*)[CCLabelTTF labelWithString:highScoreText fontName:@"Marker Felt" fontSize:24 dimensions:CGSizeMake(400, 100) hAlignment:UITextAlignmentLeft];
        
        [label setColor:ccc3(255,255,255)];
        //position the label on the center of the screen
        label.position= ccp(screenWidth/2, screenHeight/2);
        
        //add the label to the child layer
        [self addChild:label];
        
        NSString *highScore = [NSString stringWithFormat:@"%d",[Score getNewHighScore]];
        
        CCLabelTTF* label2 = (CCLabelTTF*)[CCLabelTTF labelWithString:highScore fontName:@"Marker Felt" fontSize:24 dimensions:CGSizeMake(400, 100) hAlignment:UITextAlignmentLeft];
        
        [label2 setColor:ccc3(255,255,255)];
        //position the label on the center of the screen
        label2.position= ccp(screenWidth/2, screenHeight/3);
        
        //add the label to the child layer
        [self addChild:label2];
        
        //Add the buttons to the screen
        CCMenuItem *highScoresButton =
        [CCMenuItemFont itemWithString:@"View High Scores" target:self selector:@selector(onHighScore:)];
        
        CCMenuItem *backButton =
        [CCMenuItemFont itemWithString:@"Return to Main Menu" target:self selector:@selector(onBack:)];
        
        CCMenu *highScoreMenu = [CCMenu menuWithItems:highScoresButton,backButton, nil];
        [highScoreMenu alignItemsVertically];
        [highScoreMenu setPosition:ccp(screenWidth/2, screenHeight*0.25f)];
        
        //Add the menu to the layer
        [self addChild:highScoreMenu];
        
    }
    return self;
}

- (void) onHighScore:(CCMenuItemFont *)button {
    [[CCDirector sharedDirector] pushScene: [HighScoresScreen scene]];
}

- (void) onBack:(CCMenuItemFont*) button{
    [[CCDirector sharedDirector] popScene];
    [[CCDirector sharedDirector] popScene];

}
@end
