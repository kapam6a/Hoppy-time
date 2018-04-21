//
//  HTMainInteractor.h
//  Hoppy time
//
//  Created by a.yakimenko on 21/04/2018.
//  Copyright © 2018 Aleksey Yakimenko. All rights reserved.
//

#import "HTMainInteractorInput.h"

@protocol HTMainInteractorOutput;

@interface HTMainInteractor : NSObject <HTMainInteractorInput>

@property (nonatomic, weak) id<HTMainInteractorOutput> output;

@end
