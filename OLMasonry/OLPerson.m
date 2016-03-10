//
//  OLPerson.m
//  OLMasonry
//
//  Created by 魏旺 on 16/3/10.
//  Copyright © 2016年 olive. All rights reserved.
//

#import "OLPerson.h"

@implementation OLPerson
- (void)run {
    NSLog(@"run run run");
}

- (OLPerson *)run1 {
    NSLog(@"run1 run1 run1");
    return [[OLPerson alloc] init];
}

- (OLPerson *(^)())runBlock {
    NSLog(@"runBlock runBlock runBlock");
    OLPerson *(^block)() = ^(){
        NSLog(@"runBlock里面的block");
        return self;
    };
    return block;
}

- (void)study {
    NSLog(@"study study study");
}

- (OLPerson *)study1 {
    NSLog(@"study1 study1 study1");
    return [[OLPerson alloc] init];
}

- (OLPerson *(^)())studyBlock {
    NSLog(@"studyBlock studyBlock studyBlock");
    OLPerson *(^block)() = ^(){
        NSLog(@"studyBlock里面的block");
        return self;
    };
    return block;
}

@end
