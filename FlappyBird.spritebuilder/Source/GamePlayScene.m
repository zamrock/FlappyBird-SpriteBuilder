#import "GamePlayScene.h"
#import "Character.h"
#import "Obstacle.h"

@implementation GamePlayScene

- (void)initialize
{

    character = (Character*)[CCBReader load:@"Character"];   //will load a new Character from the CCB file
    [physicsNode addChild:character];                        //adds your character as a child of physicsNode so that physics will be applied to it.
    [self addObstacle];
}

-(void)update:(CCTime)delta  // this will be run every frame.
// delta is the time that has elapsed since the last time it was run. This is usually 1/60.
{
    // put update code here
    // Increment the time since the last obstacle was added
    timeSinceObstacle += delta; // delta is approximately 1/60th of a second
    
    // Check to see if two seconds have passed
    if (timeSinceObstacle > 2.0f)
    {
        // Add a new obstacle
        [self addObstacle];
        
        // Then reset the timer.
        timeSinceObstacle = 0.0f;
    }
}

// put new methods here
- (void)touchBegan:(UITouch *)touch withEvent:(UIEvent *)event {
    // this will get called every time the player touches the screen
    [character flap];
}


@end
