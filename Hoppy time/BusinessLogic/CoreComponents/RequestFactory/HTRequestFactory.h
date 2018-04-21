//
//  HTRequestFactory.h
//  Hoppy time
//
//  Created by a.yakimenko on 21/04/2018.
//  Copyright © 2018 Aleksey Yakimenko. All rights reserved.
//

#import <Foundation/Foundation.h>

@protocol HTRequestFactory <NSObject>

- (NSURLRequest *)GETallBeerRequest;

@end
