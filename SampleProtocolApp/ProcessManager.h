//
//  ProcessManager.h
//  SampleProtocolApp
//
//  Created by webonise on 21/09/16.
//  Copyright © 2016 webonise. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "ProcessCompletionDelegate.h"

@interface ProcessManager : NSObject

@property (nonatomic, strong) id<ProcessCompletionDelegate> delegate;

-(void)startProcess;
-(void)startProcess: (int) value;
-(void)startProcessWithCompletionBlock: (void(^)(void))completionBlock;
@end
