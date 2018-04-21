//
//  HTBeerService.h
//  Hoppy time
//
//  Created by a.yakimenko on 21/04/2018.
//  Copyright © 2018 Aleksey Yakimenko. All rights reserved.
//

#import <Foundation/Foundation.h>

@class HTBeerModel;

typedef void (^HTBeerServiceCompletionBlock)(NSArray <HTBeerModel *> *beerModels, NSError *error);

@protocol HTBeerService <NSObject>

- (void)getBeersListWithCompletionBlock:(HTBeerServiceCompletionBlock)completionBlock;

@end
