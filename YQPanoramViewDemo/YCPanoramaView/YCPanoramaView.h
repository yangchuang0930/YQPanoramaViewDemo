//
//  YCPanoramaView.h
//  YCPanoramaViewDemo
//
//  Created by problemchild on 2017/9/7.
//  Copyright © 2017年 杨闯. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface YCPanoramaView : UIView

@property(nonatomic,strong)UIImage *image;

//鱼眼效果，默认开启
@property(nonatomic,assign)BOOL Fisheye;

//惯性滑动，追求滑动稳定可以关闭。
@property(nonatomic,assign)BOOL scrollInertia;


@end
