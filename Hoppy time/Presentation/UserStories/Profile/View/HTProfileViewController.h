//
//  HTProfileViewController.h
//  Hoppy time
//
//  Created by a.yakimenko on 22/04/2018.
//  Copyright © 2018 Aleksey Yakimenko. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "HTProfileViewInput.h"

@protocol HTProfileViewOutput;

@interface HTProfileViewController : UIViewController <HTProfileViewInput>

@property (nonatomic, strong) id<HTProfileViewOutput> output;

@end
