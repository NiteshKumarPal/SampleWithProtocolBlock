//
//  main.m
//  SampleProtocolApp
//
//  Created by webonise on 21/09/16.
//  Copyright © 2016 webonise. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "AppDelegate.h"

typedef void (^SampleBlockWithVoidArgs)(void);

int main(int argc, char * argv[]) {
    @autoreleasepool {
        
        void(^sampleBlock)(void) = ^{
            NSLog(@"my first sampleBlock executes");
        };
        
        sampleBlock();
        
        SampleBlockWithVoidArgs blockWithVoidArgs = ^{
            NSLog(@"my first sampleBlock executes");
        };
        
        blockWithVoidArgs();
        
        int(^addingValues)(int,int) = ^(int first, int second){
            return first + second;
        };
        
        NSLog(@"addingValues : %d", addingValues(10,20));
        
       __block int  integerValue = 10;
        
        void(^sampleOtherBlock)(void) = ^{
            integerValue = 20;
            NSLog(@"my first sampleBlock executes %d", integerValue);
        };
        
        sampleOtherBlock();
        
        return UIApplicationMain(argc, argv, nil, NSStringFromClass([AppDelegate class]));
    }
}
