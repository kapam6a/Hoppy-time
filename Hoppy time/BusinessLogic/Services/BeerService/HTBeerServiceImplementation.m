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

//Прочее
#import <EKMapper.h>

@implementation HTBeerServiceImplementation

- (void)getBeersListWithCompletionBlock:(HTBeerServiceCompletionBlock)completionBlock {
    NSURLRequest *request = [self.requestFactory GETallBeerRequest];
    
    [self.networkClient performRequest:request
                            completion:^(NSArray *response, NSError *error) {
                                if (error == nil) {
                                    NSArray <HTBeerModel *> *beerModels = [EKMapper arrayOfObjectsFromExternalRepresentation:response
                                                                                                                 withMapping:[HTBeerModel objectMapping]];
                                    completionBlock(beerModels, nil);
                                } else {
                                    completionBlock(nil, error);
                                }
    }];
}

@end
