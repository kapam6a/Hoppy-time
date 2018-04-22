//
//  HTProfileInteractor.h
//  Hoppy time
//
//  Created by a.yakimenko on 22/04/2018.
//  Copyright © 2018 Aleksey Yakimenko. All rights reserved.
//

#import "HTProfileInteractorInput.h"

@protocol HTProfileInteractorOutput;

@interface HTProfileInteractor : NSObject <HTProfileInteractorInput>

@property (nonatomic, weak) id<HTProfileInteractorOutput> output;

@end
