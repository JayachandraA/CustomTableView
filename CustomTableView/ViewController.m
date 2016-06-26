//
//  ViewController.m
//  CustomTableView
//
//  Created by Jayachandra Agraharam on 26/06/2016.
//  Copyright © 2016 Webterminal Inc. https://iosnetwork.blogspot.com/. All rights reserved.
//

#import "ViewController.h"
#import "Quote.h"
#import "QuoteTableViewCell.h"


@interface ViewController ()<UITableViewDataSource,UITableViewDelegate>
{
    NSMutableArray *data;
}
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    data = [[NSMutableArray alloc] init];
    
    Quote *q = [[Quote alloc] init];
    q.name = @"Sheldon Cooper";
    q.avatar = @"sheldon_avatar";
    q.dateTime = @"25 Sun 2016@6:00PM";
    q.quote = @"Scissors cuts paper, paper covers rock, rock crushes lizard, lizard poisons Spock, Spock smashes scissors, scissors decapitates lizard, lizard eats paper, paper disproves Spock, Spock vaporizes rock, and as it always has, rock crushes scissors.\n-The Lizard-Spock Expansion";
    [data addObject:q];
    
    
    q = [[Quote alloc] init];
    q.name = @"Rajesh";
    q.avatar = @"rajesh_avatar";
    q.dateTime = @"25 Sun 2016@6:00PM";
    q.quote = @"Look at that. You've known you're gonna be a father for less than a day and you're already stepping up. \n -The Positive Negative Reaction";
    [data addObject:q];

    q = [[Quote alloc] init];
    q.name = @"Penny";
    q.avatar = @"penny_avatar";
    q.dateTime = @"25 Sun 2016@6:00PM";
    q.quote = @"Yeah, if he's in the room when they're making the baby, I'll give you $10.\n-The Cooper Extraction";
    [data addObject:q];

    q = [[Quote alloc] init];
    q.name = @"Leonard";
    q.avatar = @"leonard_avatar";
    q.dateTime = @"25 Sun 2016@6:00PM";
    q.quote = @"Scissors cuts paper, paper covers rock, rock crushes lizard, lizard poisons Spock, Spock smashes scissors, scissors decapitates lizard, lizard eats paper, paper disproves Spock, Spock vaporizes rock, and as it always has, rock crushes scissors.";
    [data addObject:q];

    q = [[Quote alloc] init];
    q.name = @"Howard";
    q.avatar = @"howard_avatar";
    q.dateTime = @"25 Sun 2016@6:00PM";
    q.quote = @"It's called Emily or Cinnamon. I give you actual quotes I've heard Raj say, and you guess if he was talking to his girlfriend or his dog.\n-The Anxiety Optimization";
    [data addObject:q];

    q = [[Quote alloc] init];
    q.name = @"Zack";
    q.avatar = @"zack_avatar";
    q.dateTime = @"25 Sun 2016@6:00PM";
    q.quote = @"Oh, no, you're thinking old-school Archie. It's much more sophisticated now. Like, there's two universes, and Archie's married to Betty in one and Veronica in the other. Midge is even breaking up with Moose.";
    [data addObject:q];

}


- (UITableViewCell*)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    QuoteTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"CustomCellId" forIndexPath:indexPath];
    Quote *quote = data[indexPath.row];
    cell.nameLabel.text = quote.name;
    cell.dataTimeLabel.text = quote.dateTime;
    cell.quoteLabel.text = quote.quote;
    cell.avatarImageView.image = [UIImage imageNamed:quote.avatar];
    return cell;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return data.count;
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath{
    return UITableViewAutomaticDimension;
}

- (CGFloat)tableView:(UITableView *)tableView estimatedHeightForRowAtIndexPath:(NSIndexPath *)indexPath{
    return 100;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
