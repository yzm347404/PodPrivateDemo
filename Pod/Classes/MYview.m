//
//  MYview.m
//  轮播
//
//  Created by 杨振民 on 15/11/18.
//  Copyright © 2015年 杨振民. All rights reserved.
//

#import "MYview.h"

static float staticH;
static int flag;
@interface MYview ()
{
    NSString *lb1Str;
    NSString *lb2Str;
}
@property (nonatomic, strong) UIScrollView *bgView;
@property (nonatomic, strong) UILabel *lb1;
@property (nonatomic, strong) UILabel *lb2;
@property (nonatomic, strong) NSTimer *timer;



@end
@implementation MYview


- (void)drawRect:(CGRect)rect {

    staticH = rect.size.height;
    _lb1 = [[UILabel alloc]initWithFrame:CGRectMake(0, 0, rect.size.width, rect.size.height)];
    _lb1.backgroundColor = [UIColor blueColor];
    _lb1.alpha = 0.5;
    [self addSubview:_lb1];
    
    _lb2 = [[UILabel alloc]initWithFrame:CGRectMake(0, rect.size.height, rect.size.width, rect.size.height)];
    _lb2.backgroundColor = [UIColor greenColor];
    _lb2.alpha = 0.5;
    [self addSubview:_lb2];
    lb1Str = [NSString stringWithFormat:@"%i",flag];
    _lb1.text = _containArr[flag];
    lb2Str = [NSString stringWithFormat:@"%i",flag+1];
    _lb2.text = _containArr[flag+1];
    
    
    _timer = [NSTimer scheduledTimerWithTimeInterval:0.5 target:self selector:@selector(change) userInfo:nil repeats:YES];
}


- (void)change
{
   

    _lb1.frame = CGRectMake(0, _lb1.frame.origin.y-5, _lb1.frame.size.width, _lb1.frame.size.height);
    
    _lb2.frame = CGRectMake(0, _lb2.frame.origin.y-5, _lb2.frame.size.width, _lb2.frame.size.height);
    
    if (_lb1.frame.origin.y == -staticH) {
        _lb1.frame = CGRectMake(0, staticH, _lb1.frame.size.width, _lb1.frame.size.height);
        lb1Str = [NSString stringWithFormat:@"%i",[lb2Str intValue]+1];
        _lb1.text = _containArr[lb1Str.intValue%_containArr.count];
        flag++;
    }
    
    if (_lb2.frame.origin.y == -staticH) {
        _lb2.frame = CGRectMake(0, staticH, _lb2.frame.size.width, _lb2.frame.size.height);
        lb2Str = [NSString stringWithFormat:@"%i",[lb1Str intValue]+1];
        _lb2.text = _containArr[lb2Str.intValue%_containArr.count];
        flag++;
    }
    
    
}

@end

