//
//  HTProfileService.h
//  Hoppy time
//
//  Created by a.yakimenko on 22/04/2018.
//  Copyright © 2018 Aleksey Yakimenko. All rights reserved.
//

#import <Foundation/Foundation.h>

@class HTProfileModel;

typedef void (^HTProfileServiceCompletionBlock)(HTProfileModel *profileModel, NSError *error);

@protocol HTProfileService <NSObject>

- (void)getProfileWithCompletionBlock:(HTProfileServiceCompletionBlock)completionBlock;

@end
