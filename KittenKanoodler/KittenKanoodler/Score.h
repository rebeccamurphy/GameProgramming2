//
//  Score.h
//  iMGABaseCC
//
//  Created by Ron Coleman on 1/13/13.
//  Copyright (c) 2013 __MyCompanyName__. All rights reserved.
//

#import "cocos2d.h"

/** Convenience class for managing scores */
@interface Score : CCLayer {
    CCLabelTTF* label;
}

/** Gets the score */
+ (int) score;

/** Gets the high scores */
+ (int*) getHighScores;

/** Increments the score */
+ (void) increment:(int)amount;

/** Sets the high scores */
+ (void) setHighScores;

/** Gets the newest high Score */
+ (int) getNewHighScore;

/** Checks if a high score was made */
+ (bool) gotHighScore;

/** Constructor */
- (id) initAt:(CGPoint) point;

/** Updates the score */
- (void) update;

@end
