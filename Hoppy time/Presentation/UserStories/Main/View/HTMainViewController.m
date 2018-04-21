//
//  HTMainViewController.m
//  Hoppy time
//
//  Created by a.yakimenko on 21/04/2018.
//  Copyright © 2018 Aleksey Yakimenko. All rights reserved.
//

#import "HTMainViewController.h"

#import "HTMainViewOutput.h"

@interface HTMainViewController ()

@end

@implementation HTMainViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self.output viewIsReady];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
