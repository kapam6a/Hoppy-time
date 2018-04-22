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
            dispatch_async(dispatch_get_main_queue(), ^{
                [self.output didGetBeersList:beerModels];
            });
        } else {
            dispatch_async(dispatch_get_main_queue(), ^{
                [self.output didFailToGetBeersListWithError:error];
            });
        }
    }];
}

@end
