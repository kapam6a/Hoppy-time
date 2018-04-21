//
//  HTMainAssembly.m
//  Hoppy time
//
//  Created by a.yakimenko on 21/04/2018.
//  Copyright © 2018 Aleksey Yakimenko. All rights reserved.
//

#import "HTMainAssembly.h"

//Компоненты ассембли
#import "HTMainViewController.h"
#import "HTMainPresenter.h"
#import "HTMainInteractor.h"
#import "HTMainRouter.h"

//Зависимости
#import "HTServicesAssembly.h"

@implementation HTMainAssembly

- (HTMainViewController *)mainViewController {
    return [TyphoonDefinition withClass:[HTMainViewController class]
                          configuration:^(TyphoonDefinition *definition) {
                              [definition injectProperty:@selector(output)
                                                    with:[self mainPresenter]];
                          }];
}

- (HTMainPresenter *)mainPresenter {
    return [TyphoonDefinition withClass:[HTMainPresenter class]
                          configuration:^(TyphoonDefinition *definition) {
                              [definition injectProperty:@selector(view)
                                                    with:[self mainViewController]];
                              [definition injectProperty:@selector(interactor)
                                                    with:[self mainInteractor]];
                              [definition injectProperty:@selector(router)
                                                    with:[self mainRouter]];
                          }];
}

- (HTMainInteractor *)mainInteractor {
    return [TyphoonDefinition withClass:[HTMainInteractor class]
                          configuration:^(TyphoonDefinition *definition) {
                              [definition injectProperty:@selector(output)
                                                    with:[self mainPresenter]];
                              [definition injectProperty:@selector(beerService)
                                                    with:[self.servicesAssembly beerService]];
                          }];
}

- (HTMainRouter *)mainRouter {
    return [TyphoonDefinition withClass:[HTMainRouter class]
                          configuration:^(TyphoonDefinition *definition) {
                              [definition injectProperty:@selector(viewController)
                                                    with:[self mainViewController]];
                          }];
}


@end
