//
//  ViewController.m
//  ChartsDemo
//
//  Created by 李育豪 on 2015/7/2.
//  Copyright (c) 2015年 ALPHACamp. All rights reserved.
//

#import "ViewController.h"
#import "SPChart.h"

#define Color1  [UIColor colorWithRed:120/255.0 green:219/255.0 blue:226/255.0 alpha:255/255.0]
#define Color2  [UIColor colorWithRed:239/255.0 green:222/255.0 blue:205/255.0 alpha:255/255.0]
#define Color3  [UIColor colorWithRed:172/255.0 green:229/255.0 blue:238/255.0 alpha:255/255.0]
#define Color4  [UIColor colorWithRed:115/255.0 green:102/255.0 blue:189/255.0 alpha:255/255.0]
#define Color5  [UIColor colorWithRed:221/255.0 green:68/255.0 blue:146/255.0 alpha:255/255.0]
#define Color6  [UIColor colorWithRed:253/255.0 green:219/255.0 blue:109/255.0 alpha:255/255.0]
#define Color7  [UIColor colorWithRed:110/255.0 green:81/255.0 blue:96/255.0 alpha:255/255.0]
#define Color8  [UIColor colorWithRed:149/255.0 green:145/255.0 blue:140/255.0 alpha:255/255.0]
#define Color9  [UIColor colorWithRed:253/255.0 green:221/255.0 blue:230/255.0 alpha:255/255.0]
#define Color10  [UIColor colorWithRed:197/255.0 green:227/255.0 blue:132/255.0 alpha:255/255.0]

@interface ViewController ()

@property (weak, nonatomic) SPBarChart * barChart2;
@property (weak, nonatomic) IBOutlet UIView *chartsView;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    SPBarChart * chart = [[SPBarChart alloc] initWithFrame:self.chartsView.bounds];

    [chart setDatas:@[
                      [SPBarChartData dataWithValue:5 color:Color1 description:@"一"],
                      [SPBarChartData dataWithValue:10 color:Color2 description:@"二"],
                      [SPBarChartData dataWithValue:15 color:Color3 description:@"三"],
                      [SPBarChartData dataWithValue:10 color:Color4 description:@"四"],
                      [SPBarChartData dataWithValue:40 color:Color5 description:@"五"],
                      [SPBarChartData dataWithValue:10 color:Color6 description:@"六"],
                      [SPBarChartData dataWithValue:20 color:Color7 description:@"七"],
                      [SPBarChartData dataWithValue:30 color:Color8 description:@"八"],
                      [SPBarChartData dataWithValue:15 color:Color9 description:@"九"],
                      [SPBarChartData dataWithValue:25 color:Color10 description:@"十"],
                      ]];
    
    
    // Show axis
    chart.showAxis = YES;
    // and section lines inside
    chart.showSectionLines = YES;
    
    // Show empty message, if the chart is empty
    chart.emptyChartText = @"The chart is empty.";
    
    [self.chartsView addSubview:chart];
    
    [chart drawChart];

}

- (void)SPChart:(SPBarChart *)chart barSelected:(NSInteger)barIndex barFrame:(CGRect)barFrame touchPoint:(CGPoint)touchPoint
{
    //點下bar,跑出數值出來!!!
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
