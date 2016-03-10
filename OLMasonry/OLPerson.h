//
//  OLPerson.h
//  OLMasonry
//
//  Created by 魏旺 on 16/3/10.
//  Copyright © 2016年 olive. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface OLPerson : NSObject
- (void)run;
- (OLPerson *)run1;
- (OLPerson *(^)())runBlock;
- (void)study;
- (OLPerson *)study1;
- (OLPerson *(^)())studyBlock;
@end
