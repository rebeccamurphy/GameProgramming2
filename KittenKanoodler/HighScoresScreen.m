//
//  HighScoresScreen.m
//  KittenKanoodler
//
//  Created by Christina Ramos on 10/6/14.
//  Copyright 2014 Christina Ramos. All rights reserved.
//

#import "Score.h"
#import "HighScoresScreen.h"


@implementation HighScoresScreen
+(CCScene *) scene
{
    //Get a scene
    CCScene * scene = [CCScene node];
    
    //Construct a high scores screen and add it to the scene
    
    HighScoresScreen * layer = [HighScoresScreen node];
    [scene addChild:layer];
    
    return scene;
}

- (id) init {
    if ((self=[super init ])){
        int screenWidth = [[CCDirector sharedDirector] winSize].width;
        int screenHeight = [[CCDirector sharedDirector] winSize].height;
        
        //Display High Scores
        
        NSString *highScoreText = @"High Scores";
        
        CCLabelTTF* label = (CCLabelTTF*)[CCLabelTTF labelWithString:highScoreText fontName:@"Marker Felt" fontSize:24 dimensions:CGSizeMake(400, 100) hAlignment:UITextAlignmentLeft];
        
        [label setColor:ccc3(0,255,0)];
        
        //position the label on the center of the screen
        label.position= ccp(screenWidth/2, screenHeight/2);
        
        //add the label to the child layer
        [self addChild:label];
        
        int* scoreArray = [Score getHighScores];
        NSString *highScoreTop = [NSString stringWithFormat:@"%d",scoreArray[0]];
        NSString *highScoreMid = [NSString stringWithFormat:@"%d",scoreArray[1]];
        NSString *highScoreLow = [NSString stringWithFormat:@"%d",scoreArray[2]];
        
        CCLabelTTF *topScore = [CCLabelTTF labelWithString: highScoreTop fontName:@"Marker Felt" fontSize:24 dimensions:CGSizeMake(400, 100) hAlignment:UITextAlignmentLeft];
        CCLabelTTF *midScore = [CCLabelTTF labelWithString: highScoreMid fontName:@"Marker Felt" fontSize:24 dimensions:CGSizeMake(400, 100) hAlignment:UITextAlignmentLeft];
        CCLabelTTF *lowScore = [CCLabelTTF labelWithString: highScoreLow fontName:@"Marker Felt" fontSize:24 dimensions:CGSizeMake(400, 100) hAlignment:UITextAlignmentLeft];
        
        [topScore setColor:ccc3(0,255,0)];
        [midScore setColor:ccc3(0,255,0)];
        [lowScore setColor:ccc3(0,255,0)];
        
        //position the label on the center of the screen
        topScore.position= ccp(screenWidth/2, screenHeight/2-50);
        midScore.position= ccp(screenWidth/2, screenHeight/2-100);
        lowScore.position= ccp(screenWidth/2, screenHeight/2-150);
        
        //add the label to the child layer
        [self addChild:topScore];
        [self addChild:midScore];
        [self addChild:lowScore];
        //Add the buttons to the screen
        
        CCMenuItem *backButton =
        [CCMenuItemFont itemWithString:@"Back" target:self selector:@selector(onBack:)];
        
        CCMenu *hsMenu = [CCMenu menuWithItems: backButton, nil];
        [hsMenu alignItemsVertically];
        [hsMenu setPosition:ccp(screenWidth/2, screenHeight*0.25f)];
        
        //Add the menu to the layer
        [self addChild:hsMenu];
        
    }
    return self;
}

- (void) onBack:(CCMenuItemFont*) button{
    [[CCDirector sharedDirector] popScene];
}
@end
