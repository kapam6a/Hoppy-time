//
//  HTMainPresenter.m
//  Hoppy time
//
//  Created by a.yakimenko on 21/04/2018.
//  Copyright © 2018 Aleksey Yakimenko. All rights reserved.
//

#import "HTMainPresenter.h"

//Зависимости
#import "HTMainInteractorInput.h"

@implementation HTMainPresenter

- (void)viewIsReady {
    [self.interactor getBeersList];
}

@end
