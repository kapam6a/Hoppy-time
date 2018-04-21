//
//  HTBeerServiceImplementation.m
//  Hoppy time
//
//  Created by a.yakimenko on 21/04/2018.
//  Copyright © 2018 Aleksey Yakimenko. All rights reserved.
//

#import "HTBeerServiceImplementation.h"

//Зависимости
#import "HTRequestFactory.h"
#import "HTNetworkClient.h"

//Модели
#import "HTBeerModel.h"

@implementation HTBeerServiceImplementation

- (void)getBeersListWithCompletionBlock:(HTBeerServiceCompletionBlock)completionBlock {
    NSURLRequest *request = [self.requestFactory GETallBeerRequest];
    
    [self.networkClient performRequest:request
                            completion:^(NSDictionary *response, NSError *error) {
        
    }];
}

@end
