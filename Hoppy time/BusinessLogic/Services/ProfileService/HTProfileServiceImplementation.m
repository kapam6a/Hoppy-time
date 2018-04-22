//
//  HTProfileServiceImplementation.m
//  Hoppy time
//
//  Created by a.yakimenko on 22/04/2018.
//  Copyright © 2018 Aleksey Yakimenko. All rights reserved.
//

#import "HTProfileServiceImplementation.h"

//Зависимости
#import "HTRequestFactory.h"
#import "HTNetworkClient.h"

//Модели
#import "HTProfileModel.h"

//Прочее
#import <EKMapper.h>

@implementation HTProfileServiceImplementation

- (void)getProfileWithCompletionBlock:(HTProfileServiceCompletionBlock)completionBlock {
    NSURLRequest *request = [self.requestFactory GETProfileRequest];
    
    [self.networkClient performRequest:request
                            completion:^(NSDictionary *response, NSError *error) {
                                if (error == nil) {
//                                    HTProfileModel *profileModel = [EKMapper objectFromExternalRepresentation:response
//                                                                                                  withMapping:[HTProfileModel objectMapping]];
                                    completionBlock(nil, nil);
                                } else {
                                    completionBlock(nil, error);
                                }
                            }];

}

@end
