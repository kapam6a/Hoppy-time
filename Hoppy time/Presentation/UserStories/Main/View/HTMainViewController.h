//
//  HTMainViewController.h
//  Hoppy time
//
//  Created by a.yakimenko on 21/04/2018.
//  Copyright © 2018 Aleksey Yakimenko. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "HTMainViewInput.h"

@protocol HTMainViewOutput;

@interface HTMainViewController : UIViewController <HTMainViewInput>

@property (nonatomic, strong) id<HTMainViewOutput> output;

@end

