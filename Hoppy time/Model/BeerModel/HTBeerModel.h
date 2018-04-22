//
//  HTBeerModel.h
//  Hoppy time
//
//  Created by a.yakimenko on 21/04/2018.
//  Copyright © 2018 Aleksey Yakimenko. All rights reserved.
//

#import <EasyMapping/EasyMapping.h>

@interface HTBeerModel : NSObject <EKMappingProtocol>

@property (nonatomic, copy) NSString *name;
@property (nonatomic, assign) NSInteger abv;
@property (nonatomic, assign) NSInteger ibu;
@property (nonatomic, copy) NSString *about;
@property (nonatomic, strong) NSURL *imageUrl;

@end
