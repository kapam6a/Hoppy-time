//
//  HTCoreComponentsAssembly.h
//  Hoppy time
//
//  Created by a.yakimenko on 21/04/2018.
//  Copyright © 2018 Aleksey Yakimenko. All rights reserved.
//

#import "Typhoon.h"

@protocol HTNetworkClient;
@protocol HTRequestFactory;

@interface HTCoreComponentsAssembly : TyphoonAssembly

- (id<HTNetworkClient>)networkClient;
- (id<HTRequestFactory>)requestFactory;

@end
