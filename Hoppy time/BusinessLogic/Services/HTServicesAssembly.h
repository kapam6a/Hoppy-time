//
//  HTServicesAssembly.h
//  Hoppy time
//
//  Created by a.yakimenko on 21/04/2018.
//  Copyright © 2018 Aleksey Yakimenko. All rights reserved.
//

#import "Typhoon.h"

@class HTCoreComponentsAssembly;

@protocol HTBeerService;

@interface HTServicesAssembly : TyphoonAssembly

@property (nonatomic, strong) HTCoreComponentsAssembly *coreComponentsAssembly;

- (id<HTBeerService>)beerService; 

@end
