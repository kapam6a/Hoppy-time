//
//  HTProfilePresenter.h
//  Hoppy time
//
//  Created by a.yakimenko on 22/04/2018.
//  Copyright © 2018 Aleksey Yakimenko. All rights reserved.
//

#import "HTProfileViewOutput.h"

@protocol HTProfileViewInput;
@protocol HTProfileInteractorInput;
@protocol HTProfileRouterInput;

@interface HTProfilePresenter : NSObject <HTProfileViewOutput>

@property (nonatomic, weak) id<HTProfileViewInput> view;
@property (nonatomic, strong) id<HTProfileInteractorInput> interactor;
@property (nonatomic, strong) id<HTProfileRouterInput> router;

@end
