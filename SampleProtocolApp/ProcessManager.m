//
//  ProcessManager.m
//  SampleProtocolApp


#import "ProcessManager.h"

@implementation ProcessManager
@synthesize delegate;

int intValue;
void (^completionBlockTask)(void);

-(void)startProcess{
    [NSTimer scheduledTimerWithTimeInterval:10.0 target:self selector:@selector(processCompletionMnagement) userInfo:nil repeats:NO];
}

-(void)startProcess: (int) value{
    [NSTimer scheduledTimerWithTimeInterval:10.0 target:self selector:@selector(processCompletionMnagement) userInfo:nil repeats:NO];
    
    intValue = value;
    
}

-(void)startProcessWithCompletionBlock: (void(^)(void))completionBlock{
    [NSTimer scheduledTimerWithTimeInterval:10.0 target:self selector:@selector(processCompletionMnagement) userInfo:nil repeats:NO];
    
    completionBlockTask = completionBlock;
}

-(void)processCompletionMnagement{
    [delegate processCompleteTask];
    
    //[delegate processCompleteTask:intValue];
    completionBlockTask();
}

-(void)processWithBlock: (void(^)(void))block{
    block();
}

@end
