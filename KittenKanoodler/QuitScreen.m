//
//  QuitScreen.m
//  KittenKanoodler
//
//  Created by Christina Ramos on 10/6/14.
//  Copyright 2014 Christina Ramos. All rights reserved.
//

#import "QuitScreen.h"


@implementation QuitScreen
+(CCScene *) scene
{
    //Get a scene
    CCScene * scene = [CCScene node];
    
    //Construct a main screen and add it to the scene
    
    QuitScreen * layer = [QuitScreen node];
    [scene addChild:layer];
    
    return scene;
}

- (id) init {
    if ((self=[super init ])){
        int screenWidth = [[CCDirector sharedDirector] winSize].width;
        int screenHeight = [[CCDirector sharedDirector] winSize].height;
        
       //Display quit?
        
        NSString *quitText = @"Quit?";
        
        CCLabelTTF* label = (CCLabelTTF*)[CCLabelTTF labelWithString:quitText fontName:@"Marker Felt" fontSize:24 dimensions:CGSizeMake(400, 100) hAlignment:UITextAlignmentLeft];
        
        [label setColor:ccc3(0,255,0)];
        
        //position the label on the center of the screen
        label.position= ccp(screenWidth/2, screenHeight/2);
        
        //add the label to the child layer
        [self addChild:label];
        
        //Add the buttons to the screen
            CCMenuItem *yesButton =
        [CCMenuItemFont itemWithString:@"Yes" target:self selector:@selector(quitGame:)];
            CCMenuItem *backButton =
        [CCMenuItemFont itemWithString:@"Back" target:self selector:@selector(onBack:)];
        
        CCMenu *quitMenu = [CCMenu menuWithItems:yesButton, backButton, nil];
        [quitMenu alignItemsVertically];
        [quitMenu setPosition:ccp(screenWidth/2, screenHeight*0.25f)];
        
        //Add the menu to the layer
        [self addChild:quitMenu];
        
    }
    return self;
}
- (void) quitGame:(CCMenuItemFont*) button{
    exit(0);
}
- (void) onBack:(CCMenuItemFont*) button{
    [[CCDirector sharedDirector] popScene];
}
@end
