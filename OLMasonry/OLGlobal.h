//
//  OLGlobal.h
//  OLMasonry
//
//  Created by 魏旺 on 16/3/11.
//  Copyright © 2016年 olive. All rights reserved.
//

#import <Foundation/Foundation.h>

#define SCALE_WIDTH(x) (([UIScreen mainScreen].bounds.size.width/320.0)*(x))

#define SCREEN_WIDTH    [UIScreen mainScreen].bounds.size.width
#define SCREEN_HEIGHT   [UIScreen mainScreen].bounds.size.height

#define OLLOG(xx, ...)      NSLog(@"< %s:(%d) > : " xx , __PRETTY_FUNCTION__, __LINE__, ##__VA_ARGS__)

@interface OLGlobal : NSObject

@end
