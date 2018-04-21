//
//  HTBeerModel.m
//  Hoppy time
//
//  Created by a.yakimenko on 21/04/2018.
//  Copyright © 2018 Aleksey Yakimenko. All rights reserved.
//

#import "HTBeerModel.h"

@implementation HTBeerModel

#pragma mark - EKMappingProtocol

+ (EKObjectMapping *)objectMapping {
    return [EKObjectMapping mappingForClass:self
                                  withBlock:^(EKObjectMapping *mapping) {
                                      [mapping mapKeyPath:@"beer_name"
                                               toProperty:NSStringFromSelector(@selector(imageUrl))
                                           withValueBlock:^id(NSString *key, id value) {
                                               return [NSURL URLWithString:value];
                                           }];
                                  }];
}

@end
