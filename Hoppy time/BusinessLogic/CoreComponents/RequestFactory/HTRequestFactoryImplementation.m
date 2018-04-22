//
//  HTRequestFactoryImplementation.m
//  Hoppy time
//
//  Created by a.yakimenko on 21/04/2018.
//  Copyright © 2018 Aleksey Yakimenko. All rights reserved.
//

#import "HTRequestFactoryImplementation.h"

@implementation HTRequestFactoryImplementation

- (NSURLRequest *)GETAllBeerRequest {
    NSString *string = [NSString stringWithFormat:@"https://api.punkapi.com/v2/beers"];
    NSURL *url = [NSURL URLWithString:string];
    return [NSURLRequest requestWithURL:url];
}

- (NSURLRequest *)GETProfileRequest {
    NSString *string = [NSString stringWithFormat:@"https://api.punkapi.com/v2/beers"];
    NSURL *url = [NSURL URLWithString:string];
    return [NSURLRequest requestWithURL:url];
}

@end
