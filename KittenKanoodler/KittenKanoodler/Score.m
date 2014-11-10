//
//  Score.m
//  iMGABaseCC
//
//  Created by Ron Coleman on 1/13/13.
//  Copyright (c) 2013 __MyCompanyName__. All rights reserved.
//

#import "Score.h"

static int value;
static int newHighScore;
static int highScores[3];
static int tempValue;
static bool gotHighScore = false;

@implementation Score
+ (int) score {
	return value;
}

+ (void) increment: (int) amount {
	value += amount;
}

+ (int*) getHighScores {
    if(!highScores) {
        [Score setHighScores];
        return highScores;
    }
    else
        return highScores;
}

+ (void) setHighScores {
    if (!highScores) {
        for(int i = 0; i < 3; i++) {
            highScores[i] = 0;
        }
    }
    else {
        newHighScore = value;
        tempValue = 0;
        for (int j = 0; j < 3; j++) {
            if(highScores[j] < value) {
                gotHighScore = true;
                tempValue = highScores[j];
                highScores[j] = value;
                value = tempValue;
            }
        }
        if(![Score gotHighScore]) {
            newHighScore = 0;
        }
    }
}

+ (bool) gotHighScore {
    return gotHighScore;
}

+ (int) getNewHighScore {
    return newHighScore;
}

- (id) initAt:(CGPoint) point {
    if((self = [super init])) {
        label = [CCLabelTTF labelWithString:@"" fontName:@"Marker Felt" fontSize:30];

        label.position = ccp(point.x, point.y);

        [label setColor:ccc3(0, 0, 0)];

        [self addChild:label];
    }
    
    return self;
}

- (void) update {
    NSString* text = @"0";
    
    text = [text stringByAppendingString:[NSString stringWithFormat:@"%d",value]];
    
    [label setString:text];
}



@end
