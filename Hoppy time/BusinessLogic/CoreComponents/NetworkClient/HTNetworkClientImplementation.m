//
//  HTNetworkClientImplementation.m
//  Hoppy time
//
//  Created by a.yakimenko on 21/04/2018.
//  Copyright © 2018 Aleksey Yakimenko. All rights reserved.
//

#import "HTNetworkClientImplementation.h"

@implementation HTNetworkClientImplementation

- (void)performRequest:(NSURLRequest *)request
            completion:(HTCompletionBlock)completion {
    NSURLSessionDataTask *downloadTask = [self.urlSession dataTaskWithRequest:request completionHandler:^(NSData * _Nullable data, NSURLResponse * _Nullable response, NSError * _Nullable error) {
        
        if (error) {
            completion(nil, error);
            return;
        }
        
        NSDictionary *responseBody = [NSJSONSerialization JSONObjectWithData:data
                                                                     options:kNilOptions
                                                                       error:&error];
        completion(responseBody, error);
        
    }];
    
    [downloadTask resume];
}

@end
