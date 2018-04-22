//
//  HTAssemblyService.m
//  Hoppy time
//
//  Created by a.yakimenko on 21/04/2018.
//  Copyright © 2018 Aleksey Yakimenko. All rights reserved.
//

#import "HTServicesAssembly.h"

//Компоненты ассембли
#import "HTBeerServiceImplementation.h"
#import "HTProfileServiceImplementation.h"

//Зависимости
#import "HTCoreComponentsAssembly.h"

@implementation HTServicesAssembly

- (id<HTBeerService>)beerService {
    return [TyphoonDefinition withClass:[HTBeerServiceImplementation class]
                          configuration:^(TyphoonDefinition *definition) {
                              [definition injectProperty:@selector(requestFactory)
                                                    with:[self.coreComponentsAssembly requestFactory]];
                              [definition injectProperty:@selector(networkClient)
                                                    with:[self.coreComponentsAssembly networkClient]];
                          }];
}

- (id<HTProfileService>)profileService {
    return [TyphoonDefinition withClass:[HTProfileServiceImplementation class]
                          configuration:^(TyphoonDefinition *definition) {
                              [definition injectProperty:@selector(requestFactory)
                                                    with:[self.coreComponentsAssembly requestFactory]];
                              [definition injectProperty:@selector(networkClient)
                                                    with:[self.coreComponentsAssembly networkClient]];
                          }];
}

@end
