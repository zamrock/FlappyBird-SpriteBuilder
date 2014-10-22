#import "GamePlayScene.h"
#import "Character.h"
#import "Obstacle.h"

@implementation GamePlayScene

- (void)initialize
{

    character = (Character*)[CCBReader load:@"Character"];   //will load a new Character from the CCB file
    [physicsNode addChild:character];                        //adds your character as a child of physicsNode so that physics will be applied to it.
}

-(void)update:(CCTime)delta
{
    // put update code here
}

// put new methods here
- (void)touchBegan:(UITouch *)touch withEvent:(UIEvent *)event {
    // this will get called every time the player touches the screen
    [character flap];
}

-(void) addObstacle {
    
    [self addObstacle];
}

@end
