//
//  HTProfileViewController.m
//  Hoppy time
//
//  Created by a.yakimenko on 22/04/2018.
//  Copyright © 2018 Aleksey Yakimenko. All rights reserved.
//

#import "HTProfileViewController.h"

//Зависимости
#import "HTProfileViewOutput.h"

//Модели
#import "HTProfileModel.h"

//Прочее
#import <SDWebImage/UIImageView+WebCache.h>

@interface HTProfileViewController ()

@property (nonatomic, weak) IBOutlet UIImageView *photoImageView;
@property (nonatomic, weak) IBOutlet UILabel *loginLabel;
@property (nonatomic, weak) IBOutlet UILabel *nameLabel;
@property (nonatomic, weak) IBOutlet UILabel *surnameLabel;

@end

@implementation HTProfileViewController

#pragma mark - Life cycle

- (void)viewDidLoad {
    [super viewDidLoad];

    [self.output viewIsReady];
}

#pragma mark - HTProfileViewInput

- (void)updateWithProfile:(HTProfileModel *)profileModel {
    self.loginLabel.text = profileModel.login ?: @"логин";
    self.nameLabel.text = profileModel.name ?: @"имя";
    self.surnameLabel.text = profileModel.surName ?: @"фамилия";
    
    [self.photoImageView sd_setImageWithURL:profileModel.photoUrl
                           placeholderImage:[UIImage imageNamed:@"profile_placeholder"]];
}

@end
