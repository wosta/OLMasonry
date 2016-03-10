//
//  ViewController.m
//  OLMasonry
//
//  Created by 魏旺 on 16/3/10.
//  Copyright © 2016年 olive. All rights reserved.
//

#import "ViewController.h"
#import "OLPerson.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    self.view.backgroundColor = [UIColor whiteColor];
    
    [self personDemo];
}

- (void)personDemo {
    OLPerson *person = [[OLPerson alloc] init];
    //    [person run];
    //    [person study];
    
    person.runBlock().studyBlock().runBlock();
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
