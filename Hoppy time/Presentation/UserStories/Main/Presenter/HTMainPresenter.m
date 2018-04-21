//
//  HTMainPresenter.m
//  Hoppy time
//
//  Created by a.yakimenko on 21/04/2018.
//  Copyright © 2018 Aleksey Yakimenko. All rights reserved.
//

#import "HTMainPresenter.h"

//Зависимости
#import "HTMainInteractorInput.h"
#import "HTMainViewInput.h"

@implementation HTMainPresenter

#pragma mark - HTMainViewOutput

- (void)viewIsReady {
    [self.interactor getBeersList];
}

#pragma mark - HTMainInteractorOutput

- (void)didGetBeersList:(NSArray <HTBeerModel *> *)beerModels {
    [self.view updateWithModels:beerModels];
}

- (void)didFailToGetBeersListWithError:(NSError *)error {
    
}

@end
