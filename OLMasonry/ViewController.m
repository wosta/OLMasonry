//
//  ViewController.m
//  OLMasonry
//
//  Created by 魏旺 on 16/3/10.
//  Copyright © 2016年 olive. All rights reserved.
//

#import "ViewController.h"
#import "OLPerson.h"
#import "Masonry.h"
#import "MMPlaceHolder.h"

#define WS(weakSelf)  __weak __typeof(&*self)weakSelf = self;

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    self.view.backgroundColor = [UIColor whiteColor];
    
    /**
     *  函数式编程: 有效地理解有助于看懂Masonry
     */
//    [self personDemo];
    
//    [self view01];
    
    [self view02];
    
}

- (void)view02 {
    WS(ws);
    
    UIView *view01 = [UIView new];
    view01.backgroundColor = [UIColor greenColor];
    [view01 showPlaceHolder];
    [self.view addSubview:view01];
    
    UIView *view02 = [UIView new];
    view02.backgroundColor = [UIColor cyanColor];
    [view02 showPlaceHolder];
    [self.view addSubview:view02];
    
    [view01 mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.equalTo(ws.view.mas_left).offset(10);
        make.right.equalTo(view02.mas_left).offset(-10);
        make.centerY.mas_equalTo(ws.view.mas_centerY);
        make.height.mas_equalTo(@150);
        make.width.equalTo(view02);
        
//        make.centerY.mas_equalTo(ws.view.mas_centerY);
//        make.left.equalTo(ws.view.mas_left).with.offset(10);
//        make.right.equalTo(view02.mas_left).with.offset(-10);
//        make.height.mas_equalTo(@150);
//        make.width.equalTo(view02);
    }];
    
    [view02 mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.equalTo(view01.mas_right).offset(10);
        make.right.equalTo(ws.view).offset(-10);
        make.centerY.equalTo(ws.view.mas_centerY);
        make.height.mas_equalTo(@150);
        make.width.equalTo(view01);
        
//        make.centerY.mas_equalTo(ws.view.mas_centerY);
//        make.left.equalTo(ws.view.mas_left).with.offset(10);
//        make.right.equalTo(view01.mas_left).with.offset(-10);
//        make.height.mas_equalTo(@150);
//        make.width.equalTo(view01);
    }];
}

- (void)view01 {
    
    WS(ws);
    
    UIView *view01 = [UIView new];
    [view01 showPlaceHolder];
    view01.backgroundColor = [UIColor blackColor];
    [self.view addSubview:view01];
    [view01 mas_makeConstraints:^(MASConstraintMaker *make) {
        make.center.equalTo(ws.view);
        make.size.mas_equalTo(CGSizeMake(300, 300));
    }];
    
    
    UIView *view02 = [UIView new];
    [view02 showPlaceHolder];
    view02.backgroundColor = [UIColor redColor];
    [self.view addSubview:view02];
    [view02 mas_makeConstraints:^(MASConstraintMaker *make) {
        make.center.equalTo(view01);
        // 这样写就写死了。 如果view01 改成400了，那么距离边距就不是10了。
        //        make.size.mas_equalTo(CGSizeMake(280, 280));
        
        //        make.edges.equalTo(view01).with.insets(UIEdgeInsetsMake(10, 10, 10, 10));
        // 等价于
        //        make.top.equalTo(view01).with.offset(20);
        //        make.left.equalTo(view01).with.offset(20);
        //        make.bottom.equalTo(view01).with.offset(-20);
        //        make.right.equalTo(view01).with.offset(-20);
        
        // 等价于
        make.top.left.bottom.right.equalTo(view01).with.insets(UIEdgeInsetsMake(20, 20, 20, 20));
        
    }];
}

/**
 *  函数式编程实现
 */
- (void)personDemo {
    OLPerson *person = [[OLPerson alloc] init];
    //    [person run];
    //    [person study];
    
    person.runBlock().studyBlock().runBlock(); // 是不是类似于 Masonry 里面的语法结构
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
