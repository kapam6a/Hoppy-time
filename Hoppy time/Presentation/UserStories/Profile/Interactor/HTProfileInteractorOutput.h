//
//  HTProfileInteractorOutput.h
//  Hoppy time
//
//  Created by a.yakimenko on 22/04/2018.
//  Copyright © 2018 Aleksey Yakimenko. All rights reserved.
//

#import <Foundation/Foundation.h>

@class HTProfileModel;

@protocol HTProfileInteractorOutput <NSObject>

- (void)didGetProfile:(HTProfileModel *)profileModel;
- (void)didFailToGetProfileWithError:(NSError *)error;

@end
