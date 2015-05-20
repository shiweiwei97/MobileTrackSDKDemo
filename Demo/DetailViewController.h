//
//  DetailViewController.h
//  Demo
//
//  Created by 张蓓 on 15/5/19.
//  Copyright (c) 2015年 mobiletrack. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface DetailViewController : UIViewController

@property (strong, nonatomic) NSString *recipeName;

@property (strong, nonatomic) IBOutlet UILabel *recipeLabel;
@property (strong, nonatomic) IBOutlet UIButton *startButton;
@property (strong, nonatomic) IBOutlet UIButton *stopButton;

@end
