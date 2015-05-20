//
//  DetailViewController.m
//  Demo
//
//  Created by 张蓓 on 15/5/19.
//  Copyright (c) 2015年 mobiletrack. All rights reserved.
//

#import "DetailViewController.h"
#import "MobileTrackSDK/MobileTrackSDK.h"

@interface DetailViewController ()

@end

@implementation DetailViewController

@synthesize recipeName;
@synthesize recipeLabel;

- (void)viewDidLoad {
    [super viewDidLoad];
    recipeLabel.text = recipeName;
}

- (void)viewWillAppear:(BOOL)animated {
    [super viewWillAppear:animated];
    
    [MobileTrackSDK beginLogPageView:@"detailPage"];
}

- (void)viewWillDisappear:(BOOL)animated {
    [super viewWillDisappear:animated];
    
    [MobileTrackSDK endLogPageView:@"detailPage"];
}

- (IBAction)startEvent:(id)sender {
    [MobileTrackSDK beginEvent:@"testEvent"];
    [MobileTrackSDK beginEvent:@"testEvent2" primarykey:@"myKey" attributes:[NSDictionary dictionaryWithObjectsAndKeys:
                                                                              @"value1", @"key1",
                                                                              @"value2", @"key2",
                                                                              nil]];
}

- (IBAction)endEvent:(id)sender {
    [MobileTrackSDK endEvent:@"testEvent"];
    [MobileTrackSDK endEvent:@"testEvent2" primarykey:@"myKey"];
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
