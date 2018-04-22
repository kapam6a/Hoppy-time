//
//  HTMainViewController.m
//  Hoppy time
//
//  Created by a.yakimenko on 21/04/2018.
//  Copyright © 2018 Aleksey Yakimenko. All rights reserved.
//

#import "HTMainViewController.h"

//Зависимости
#import "HTMainViewOutput.h"

//Прочее
#import "HTImageTableViewCell.h"

@interface HTMainViewController () <UITableViewDataSource, UITableViewDelegate>

@property (nonatomic, weak) IBOutlet UITableView *tableView;

@property (nonatomic, strong) NSArray <HTBeerModel *> *beerModels;

@end

@implementation HTMainViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self configure];
    
    [self.output viewIsReady];
}

#pragma mark - HTMainViewInput

- (void)updateWithModels:(NSArray <HTBeerModel *> *)models {
    self.beerModels = models;
    
    [self.tableView reloadData];
}

#pragma mark - UITableViewDataSource

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return self.beerModels.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    HTImageTableViewCell *cell = [self.tableView dequeueReusableCellWithIdentifier:NSStringFromClass([HTImageTableViewCell class])];
    [cell updateWithModel:self.beerModels[indexPath.row]];
    return cell;
}

#pragma mark - UITableViewDelegate

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath {
    return 330;
}

#pragma mark - Helpers

- (void)configure {
    self.tableView.dataSource = self;
    self.tableView.delegate = self;
    
    self.tableView.separatorStyle = UITableViewCellSeparatorStyleNone;
    
    UINib *cellNib = [UINib nibWithNibName:NSStringFromClass([HTImageTableViewCell class])
                                    bundle:[NSBundle mainBundle]];
    [self.tableView registerNib:cellNib
         forCellReuseIdentifier:NSStringFromClass([HTImageTableViewCell class])];
}

@end
