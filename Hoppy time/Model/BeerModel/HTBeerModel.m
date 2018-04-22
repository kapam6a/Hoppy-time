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
                                      [mapping mapKeyPath:@"image_url"
                                               toProperty:NSStringFromSelector(@selector(imageUrl))
                                           withValueBlock:^id(NSString *key, id value) {
                                               return [NSURL URLWithString:value];
                                           }];
                                      [mapping mapKeyPath:@"name"
                                               toProperty:NSStringFromSelector(@selector(name))];
                                      [mapping mapKeyPath:@"abv"
                                               toProperty:NSStringFromSelector(@selector(abv))];
                                      [mapping mapKeyPath:@"ibu"
                                               toProperty:NSStringFromSelector(@selector(ibu))];
                                      [mapping mapKeyPath:@"description"
                                               toProperty:NSStringFromSelector(@selector(about))];
                                  }];
}

@end
