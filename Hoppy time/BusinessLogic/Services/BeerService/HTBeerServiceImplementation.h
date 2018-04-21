//
//  HTBeerServiceImplementation.h
//  Hoppy time
//
//  Created by a.yakimenko on 21/04/2018.
//  Copyright © 2018 Aleksey Yakimenko. All rights reserved.
//

#import "HTBeerService.h"

@protocol HTRequestFactory;
@protocol HTNetworkClient;

@interface HTBeerServiceImplementation : NSObject <HTBeerService>

@property (nonatomic, strong) id<HTRequestFactory> requestFactory;
@property (nonatomic, strong) id<HTNetworkClient> networkClient;

@end
