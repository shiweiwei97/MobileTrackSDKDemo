//
//  DetailViewController.m
//  Demo
//
//  Created by 张蓓 on 15/5/19.
//  Copyright (c) 2015年 mobiletrack. All rights reserved.
//

#import "DetailViewController.h"

@interface DetailViewController ()

@end

@implementation DetailViewController

@synthesize recipeName;
@synthesize recipeLabel;

- (void)viewDidLoad {
    [super viewDidLoad];
    recipeLabel.text = recipeName;
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
