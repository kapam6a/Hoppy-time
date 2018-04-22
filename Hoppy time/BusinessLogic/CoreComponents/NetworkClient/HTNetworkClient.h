//
//  HTNetworkClient.h
//  Hoppy time
//
//  Created by a.yakimenko on 21/04/2018.
//  Copyright © 2018 Aleksey Yakimenko. All rights reserved.
//

#import <Foundation/Foundation.h>

typedef void (^HTCompletionBlock)(id response, NSError *error);

@protocol HTNetworkClient <NSObject>

- (void)performRequest:(NSURLRequest *)request
            completion:(HTCompletionBlock)completion;

@end
