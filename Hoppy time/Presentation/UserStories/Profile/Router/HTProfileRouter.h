//
//  HTProfileRouter.h
//  Hoppy time
//
//  Created by a.yakimenko on 22/04/2018.
//  Copyright © 2018 Aleksey Yakimenko. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "HTProfileRouterInput.h"

@interface HTProfileRouter : NSObject <HTProfileRouterInput>

@property (nonatomic, weak) UIViewController *viewController;

@end
