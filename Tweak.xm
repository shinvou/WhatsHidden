//
//  Tweak.xm
//  WhatsHidden
//
//  Created by Timm Kandziora on 08.05.14.
//  Copyright (c) 2014 Timm Kandziora. All rights reserved.
//

@interface WATableViewController : UITableViewController
@end

@interface WAChatsTableView : UITableView
@end

@interface ChatListViewController : WATableViewController
@property (retain, nonatomic) WAChatsTableView *tableViewChats;
- (void)viewDidLoad;
@end

%hook ChatListViewController

- (void)viewDidLoad
{
	%orig;

	self.tableViewChats.showsVerticalScrollIndicator = NO;
}

%end
