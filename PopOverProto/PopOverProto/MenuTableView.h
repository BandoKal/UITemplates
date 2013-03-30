//
//  MenuTableView.h
//  PopOverProto
//
//  Created by Jason Bandy on 3/29/13.
//  Copyright (c) 2013 BandoTech. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface MenuTableView : UITableView <UITableViewDataSource,UITableViewDelegate>
{
    NSMutableArray *menuData;
    UITableViewCell *reuseCell;
}

// this class with include animation giving the drawer effect from the left side
// may go ahead create the cells with the reuse identifier
// or may be easier to create a cell scene with xib file.
// table view will need to know what device and orientation it is drawing itself in...
-(id)initWithParentViewController: (UIViewController*)parent;
-(NSInteger)numberOfRowsInSection:(NSInteger)section;
-(NSInteger)numberOfSections;
-(UITableViewCell*)cellForRowAtIndexPath:(NSIndexPath *)indexPath;
@end
