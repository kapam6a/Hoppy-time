//
//  HTProfileInteractor.m
//  Hoppy time
//
//  Created by a.yakimenko on 22/04/2018.
//  Copyright © 2018 Aleksey Yakimenko. All rights reserved.
//

#import "HTProfileInteractor.h"

//Зависимости
#import "HTProfileService.h"
#import "HTProfileInteractorOutput.h"

@implementation HTProfileInteractor

#pragma mark - HTProfileInteractorInput

- (void)getProfile {
    [self.profileService getProfileWithCompletionBlock:^(HTProfileModel *profileModel, NSError *error) {
        if (error == nil) {
            dispatch_async(dispatch_get_main_queue(), ^{
                [self.output didGetProfile:profileModel];
            });
        } else {
            dispatch_async(dispatch_get_main_queue(), ^{
                [self.output didFailToGetProfileWithError:error];
            });
        }
    }];
}

@end
