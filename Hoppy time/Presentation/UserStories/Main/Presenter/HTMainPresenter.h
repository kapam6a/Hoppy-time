//
//  HTMainPresenter.h
//  Hoppy time
//
//  Created by a.yakimenko on 21/04/2018.
//  Copyright © 2018 Aleksey Yakimenko. All rights reserved.
//

#import "HTMainInteractorOutput.h"
#import "HTMainViewOutput.h"

@protocol HTMainViewInput;
@protocol HTMainInteractorInput;
@protocol HTMainRouterInput;

@interface HTMainPresenter : NSObject <HTMainInteractorOutput, HTMainViewOutput>

@property (nonatomic, weak) id<HTMainViewInput> view;
@property (nonatomic, strong) id<HTMainInteractorInput> interactor;
@property (nonatomic, strong) id<HTMainRouterInput> router;

@end
