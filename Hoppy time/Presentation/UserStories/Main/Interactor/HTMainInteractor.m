//
//  HTMainInteractor.m
//  Hoppy time
//
//  Created by a.yakimenko on 21/04/2018.
//  Copyright © 2018 Aleksey Yakimenko. All rights reserved.
//

#import "HTMainInteractor.h"

//Зависимости
#import "HTBeerService.h"
#import "HTMainInteractorOutput.h"

@implementation HTMainInteractor

- (void)getBeersList {
    [self.beerService getBeersListWithCompletionBlock:^(NSArray<HTBeerModel *> *beerModels, NSError *error) {
        if (error == nil) {
            [self.output didGetBeersList:beerModels];
        } else {
            [self.output didFailToGetBeersListWithError:error];
        }
    }];
}

@end
