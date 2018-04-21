//
//  HTCoreComponentsAssembly.m
//  Hoppy time
//
//  Created by a.yakimenko on 21/04/2018.
//  Copyright © 2018 Aleksey Yakimenko. All rights reserved.
//

#import "HTCoreComponentsAssembly.h"

//Компоненты ассембли
#import "HTNetworkClientImplementation.h"
#import "HTRequestFactoryImplementation.h"

@implementation HTCoreComponentsAssembly

- (id<HTNetworkClient>)networkClient {
    return [TyphoonDefinition withClass:[HTNetworkClientImplementation class]
                          configuration:^(TyphoonDefinition *definition) {
                              [definition injectProperty:@selector(urlSession)
                                                    with:[NSURLSession sharedSession]];
                          }];
}

- (id<HTRequestFactory>)requestFactory {
    return [TyphoonDefinition withClass:[HTRequestFactoryImplementation class]];
}

@end
