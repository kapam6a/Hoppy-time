//
//  HTNetworkClientImplementation.h
//  Hoppy time
//
//  Created by a.yakimenko on 21/04/2018.
//  Copyright © 2018 Aleksey Yakimenko. All rights reserved.
//

#import "HTNetworkClient.h"

@interface HTNetworkClientImplementation : NSObject <HTNetworkClient>

@property (nonatomic, strong) NSURLSession *urlSession;

@end
