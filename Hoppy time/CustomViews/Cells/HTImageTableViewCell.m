//
//  HTImageTableViewCell.m
//  Hoppy time
//
//  Created by a.yakimenko on 21/04/2018.
//  Copyright © 2018 Aleksey Yakimenko. All rights reserved.
//

#import "HTImageTableViewCell.h"

//Модель
#import "HTBeerModel.h"

//Прочее
#import <SDWebImage/UIImageView+WebCache.h>

@interface HTImageTableViewCell ()

@property (nonatomic, weak) IBOutlet UIImageView *backgroundImageView;
@property (nonatomic, weak) IBOutlet UILabel *firstLabel;
@property (nonatomic, weak) IBOutlet UILabel *secondLabel;
@property (nonatomic, weak) IBOutlet UILabel *thirdLabel;
@property (nonatomic, weak) IBOutlet UILabel *fourthLabel;

@end

@implementation HTImageTableViewCell

- (void)prepareForReuse {
    [super prepareForReuse];
    
    self.imageView.image = nil;
}

- (void)updateWithModel:(id)model {
    HTBeerModel *beerModel = model;
    
    self.firstLabel.text = beerModel.name;
    self.secondLabel.text = [NSString stringWithFormat:@"abv - %lu", beerModel.abv];
    self.thirdLabel.text = [NSString stringWithFormat:@"ibu - %lu", beerModel.ibu];
    self.fourthLabel.text = beerModel.about;

    [self.backgroundImageView sd_setImageWithURL:beerModel.imageUrl
                                placeholderImage:nil];
}

@end
