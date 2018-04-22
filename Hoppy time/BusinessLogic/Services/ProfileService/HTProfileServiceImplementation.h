//
//  HTProfileServiceImplementation.h
//  Hoppy time
//
//  Created by a.yakimenko on 22/04/2018.
//  Copyright © 2018 Aleksey Yakimenko. All rights reserved.
//

#import "HTProfileService.h"

@protocol HTRequestFactory;
@protocol HTNetworkClient;

@interface HTProfileServiceImplementation : NSObject <HTProfileService>

@property (nonatomic, strong) id<HTRequestFactory> requestFactory;
@property (nonatomic, strong) id<HTNetworkClient> networkClient;

@end
