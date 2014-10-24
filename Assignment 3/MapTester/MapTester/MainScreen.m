//
//  MainScreen.m
//  MapTester
//
//  Created by Marist User on 10/16/14.
//  Copyright 2014 Marist User. All rights reserved.
//

#import "MainScreen.h"
#import "cocos2d.h"
#import "CCTMXTiledMap.h"

@implementation MainScreen

+(CCScene *) scene
{
    // 'scene' is an autorelease object.
    CCScene *scene = [CCScene node];
    
    // 'layer' is an autorelease object.
    MainScreen *layer = [MainScreen node];
    
    // add layer as a child to scene
    [scene addChild: layer];
    
    // return the scene
    return scene;
}

-(id) init
{
    self = [super init];
    if(self){
        CCTMXTiledMap* world = [CCTMXTiledMap tiledMapWithTMXFile:@"kittenkanoodler_level3.tmx"];
        [self addChild: world z: 100];
        
        CCTMXTiledMap* background = [CCTMXTiledMap tiledMapWithTMXFile:@"backg.tmx"];
        [self addChild: background z: 0];
    }
    return self;
}

@end
