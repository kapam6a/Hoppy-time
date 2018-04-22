//
//  HTProfileAssembly.m
//  Hoppy time
//
//  Created by a.yakimenko on 22/04/2018.
//  Copyright © 2018 Aleksey Yakimenko. All rights reserved.
//

#import "HTProfileAssembly.h"

//Компоненты ассембли
#import "HTProfileViewController.h"
#import "HTProfilePresenter.h"
#import "HTProfileInteractor.h"
#import "HTProfileRouter.h"

//Зависимости
#import "HTServicesAssembly.h"

@implementation HTProfileAssembly

- (HTProfileViewController *)profileViewController {
    return [TyphoonDefinition withClass:[HTProfileViewController class]
                          configuration:^(TyphoonDefinition *definition) {
                              [definition injectProperty:@selector(output)
                                                    with:[self profilePresenter]];
                          }];
}

- (HTProfilePresenter *)profilePresenter {
    return [TyphoonDefinition withClass:[HTProfilePresenter class]
                          configuration:^(TyphoonDefinition *definition) {
                              [definition injectProperty:@selector(view)
                                                    with:[self profileViewController]];
                              [definition injectProperty:@selector(interactor)
                                                    with:[self profileInteractor]];
                              [definition injectProperty:@selector(router)
                                                    with:[self profileRouter]];
                          }];
}

- (HTProfileInteractor *)profileInteractor {
    return [TyphoonDefinition withClass:[HTProfileInteractor class]
                          configuration:^(TyphoonDefinition *definition) {
                              [definition injectProperty:@selector(output)
                                                    with:[self profilePresenter]];
                              [definition injectProperty:@selector(profileService)
                                                    with:[self.servicesAssembly profileService]];
                          }];
}

- (HTProfileRouter *)profileRouter {
    return [TyphoonDefinition withClass:[HTProfileRouter class]
                          configuration:^(TyphoonDefinition *definition) {
                              [definition injectProperty:@selector(viewController)
                                                    with:[self profileViewController]];
                          }];
}


@end
