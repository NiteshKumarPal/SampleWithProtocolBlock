//  ViewController.m
//  SampleProtocolApp


#import "ViewController.h"
#import "ProcessManager.h"

//Category declarartion
@interface NSString(copyRightString)
+(NSString*)getCopyRight;

@end

@implementation NSString(copyRightString)
+(NSString*)getCopyRight{
    return @"Copyright © 2016 webonise. All rights reserved.";
}
@end


@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
   
    NSLog(@"%@",[NSString getCopyRight]);
    
    ProcessManager *processManager = [[ProcessManager alloc]init];
    processManager.delegate = self;
    
    NSLog(@"Process started");
    
    [processManager startProcess];
    
    [processManager startProcess:10];
    
    [processManager startProcessWithCompletionBlock:^{
         NSLog(@"processCompleteTask for view controller");
    }];
}

-(void)processCompleteTask{
    NSLog(@"processCompleteTask for view controller");
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
