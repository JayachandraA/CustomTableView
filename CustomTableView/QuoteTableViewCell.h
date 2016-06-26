//
//  QuoteTableViewCell.h
//  CustomTableView
//
//  Created by Jayachandra Agraharam on 26/06/2016.
//  Copyright © 2016 Webterminal Inc. https://iosnetwork.blogspot.com/. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface QuoteTableViewCell : UITableViewCell
@property (nonatomic,weak) IBOutlet UIImageView *avatarImageView;
@property (nonatomic,weak) IBOutlet UILabel *nameLabel;
@property (nonatomic,weak) IBOutlet UILabel *dataTimeLabel;
@property (nonatomic,weak) IBOutlet UILabel *quoteLabel;
@end
