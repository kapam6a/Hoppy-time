//
//  HTProfilePresenter.m
//  Hoppy time
//
//  Created by a.yakimenko on 22/04/2018.
//  Copyright © 2018 Aleksey Yakimenko. All rights reserved.
//

#import "HTProfilePresenter.h"

//Зависимости
#import "HTProfileViewInput.h"
#import "HTProfileInteractorInput.h"

@implementation HTProfilePresenter

#pragma mark - HTProfileViewOutput

- (void)viewIsReady {
    [self.interactor getProfile];
}

#pragma mark - HTProfileInteractorOutput

- (void)didGetProfile:(HTProfileModel *)profileModel {
    [self.view updateWithProfile:profileModel];
}

- (void)didFailToGetProfileWithError:(NSError *)error {
    
}

@end
