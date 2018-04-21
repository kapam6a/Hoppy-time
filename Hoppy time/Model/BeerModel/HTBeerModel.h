//
//  HTBeerModel.h
//  Hoppy time
//
//  Created by a.yakimenko on 21/04/2018.
//  Copyright © 2018 Aleksey Yakimenko. All rights reserved.
//

#import <EasyMapping/EasyMapping.h>

@interface HTBeerModel : NSObject <EKMappingProtocol>

@property (nonatomic, strong) NSURL *imageUrl;

@end
