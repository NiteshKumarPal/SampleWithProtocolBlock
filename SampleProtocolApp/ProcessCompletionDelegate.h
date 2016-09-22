
//  ProcessCompletionDelegate.h
//  SampleProtocolApp

@protocol ProcessCompletionDelegate <NSObject>

-(void)processCompleteTask;
@optional
-(void)processCompleteTask: (int)value;

@end