//
//  ViewController.m
//  YQPanoramViewDemo
//
//  Created by 杨闯 on 2018/9/4.
//  Copyright © 2018年 杨闯. All rights reserved.
//

#import "ViewController.h"

#import "YCPanoramaView.h"

@interface ViewController ()

@property (weak, nonatomic) IBOutlet UISwitch *theswitch;

@property (nonatomic,strong) YCPanoramaView *panaromview;

@property int index;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.index = 0;
    
    
    //初始化
    self.panaromview = [[YCPanoramaView alloc]initWithFrame:CGRectMake(20, 20, self.view.frame.size.width-40, self.view.frame.size.height-80)];
    
    //设图片
    self.panaromview.image = [UIImage imageNamed:@"WechatIMG67.jpeg"];
    
    //显示
    [self.view addSubview:self.panaromview];
    
    //完事了
}


- (IBAction)touchedSwitch:(id)sender {
    //鱼眼效果
    self.panaromview.Fisheye = self.theswitch.isOn;
}

- (IBAction)touchedBTN:(id)sender {
    //换图片
    switch (self.index) {
        case 0:
        {
            self.panaromview.image = [UIImage imageNamed:@"WechatIMG72.jpeg"];
            self.index++;
        }
            break;
        case 1:
        {
            self.panaromview.image = [UIImage imageNamed:@"WechatIMG73.jpeg"];
            self.index++;
        }
            break;
        case 2:
        {
            self.panaromview.image = [UIImage imageNamed:@"WechatIMG70.jpeg"];
            self.index++;
        }
            break;
        case 3:
        {
            self.panaromview.image = [UIImage imageNamed:@"WechatIMG71.jpeg"];
            self.index++;
        }
            break;
        case 4:
        {
            self.panaromview.image = [UIImage imageNamed:@"WechatIMG67.jpeg"];
            self.index = 0;
        }
            break;
        default:
            break;
    }
}

@end

