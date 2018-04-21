//
//  HTMainRouter.h
//  Hoppy time
//
//  Created by a.yakimenko on 21/04/2018.
//  Copyright © 2018 Aleksey Yakimenko. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "HTMainRouterInput.h"

@interface HTMainRouter : NSObject <HTMainRouterInput>

@property (nonatomic, weak) UIViewController *viewController;

@end
