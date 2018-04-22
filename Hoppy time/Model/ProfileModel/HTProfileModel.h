//
//  HTProfileModel.h
//  Hoppy time
//
//  Created by a.yakimenko on 22/04/2018.
//  Copyright © 2018 Aleksey Yakimenko. All rights reserved.
//

#import <EasyMapping/EasyMapping.h>

@interface HTProfileModel : NSObject <EKMappingProtocol>
 
@property (nonatomic, strong) NSURL *photoUrl;
@property (nonatomic, copy) NSString *login;
@property (nonatomic, copy) NSString *name;
@property (nonatomic, copy) NSString *surName;

@end
