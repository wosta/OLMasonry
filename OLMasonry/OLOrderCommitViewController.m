//
//  OLOrderCommitViewController.m
//  OLMasonry
//
//  Created by 魏旺 on 16/3/10.
//  Copyright © 2016年 olive. All rights reserved.
//

#import "OLOrderCommitViewController.h"


#define WS(weakSelf) __weak __typeof(&*self)weakSelf = self;

@interface OLOrderCommitViewController ()
/** 头部 */
@property (nonatomic, strong)UIView *headView;
/** 中间 */
@property (nonatomic, strong)UIView *middleView;
/** 尾部 */
@property (nonatomic, strong)UIView *bottomView;

/** 商品图片 */
@property (nonatomic, strong)UIImageView *goodsImageView;
/** 商品名 */
@property (nonatomic, strong)UILabel *goodsName;
/** 商品颜色 */
@property (nonatomic, strong)UILabel *goodsColor;
/** 商品尺码 */
@property (nonatomic, strong)UILabel *goodsSize;
/** 商品件数 */
@property (nonatomic, strong)UILabel *goodsSum;
/** 商品优惠价 */
@property (nonatomic, strong)UILabel *goodsDiscount;
/** 商品原价 */
@property (nonatomic, strong)UILabel *goodsPrice;
/** 商品合计 */
@property (nonatomic, strong)UILabel *goodsTotal;
/** 商品合计价格 */
@property (nonatomic, strong)UILabel *goodsTotalPrice;

@end

@implementation OLOrderCommitViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.view.backgroundColor = [UIColor whiteColor];
    [self uiConfig];
    self.edgesForExtendedLayout = UIRectEdgeNone;
    
}

#pragma mark - 布局视图
- (void)uiConfig {
    // add view
    [self addView];
    // layout view
    [self layoutView];
}

/**
 *  添加view
 */
- (void)addView {
    UIView *headView = [UIView new];
    [headView showPlaceHolder];
    headView.backgroundColor = [UIColor greenColor];
    [self.view addSubview:headView];
    self.headView = headView;
    
    UIView *middleView = [UIView new];
    [middleView showPlaceHolder];
    middleView.backgroundColor = [UIColor redColor];
    [self.view addSubview:middleView];
    self.middleView = middleView;
    
    UIView *bottomView = [UIView new];
    [bottomView showPlaceHolder];
    bottomView.backgroundColor = [UIColor cyanColor];
    [self.view addSubview:bottomView];
    self.bottomView = bottomView;
}

/**
 *  布局view
 */
- (void)layoutView {
    WS(ws);
    
    [self.headView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(ws.view.mas_top).offset(10);
        make.left.equalTo(ws.view.mas_left).offset(10);
        make.right.equalTo(ws.view.mas_right).offset(-10);
        make.height.mas_equalTo(@SCALE_WIDTH(120));
        make.bottom.equalTo(self.middleView.mas_top).offset(-10);
    }];
    
    [self.middleView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(self.headView.mas_bottom).offset(10);
        make.left.equalTo(ws.view.mas_left).offset(10);
        make.right.equalTo(ws.view.mas_right).offset(-10);
        make.bottom.equalTo(self.bottomView.mas_top).offset(-10);
        make.height.mas_equalTo(@40);
    }];
    
    [self.bottomView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(self.middleView.mas_bottom).offset(10);
        make.left.equalTo(ws.view.mas_left).offset(10);
        make.right.equalTo(ws.view.mas_right).offset(-10);
        make.height.mas_equalTo(@120);
    }];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
