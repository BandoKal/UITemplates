//
//  MenuTableView.m
//  PopOverProto
//
//  Created by Jason Bandy on 3/29/13.
//  Copyright (c) 2013 BandoTech. All rights reserved.
//

#import "MenuTableView.h"

@implementation MenuTableView

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        // Initialization code
    }
    return self;
}

-(id)initWithParentViewController: (UIViewController*)parent
{
    self = [super init];
    if (self)
    {
        self.delegate = self;
        self.dataSource = self;
        CGRect frame = CGRectMake(0,
                                  0,
                                  95.0,
                                  parent.view.frame.size.height);
        
        [self setFrame:frame];
        [self setRowHeight:95.0];
        // need to see if i can remove the divider line in the table view
        [self setBackgroundColor:[UIColor grayColor]];
        [parent.view addSubview:self];
        
        
        //initalize menu data source
        menuData = [[NSMutableArray alloc]initWithCapacity:15];
        for (int i = 0; i<15; i++)
        {
            UIButton *button = [UIButton buttonWithType:UIButtonTypeRoundedRect];
            [button setFrame:CGRectMake(10.0,
                                       10.0,
                                       75.0,
                                        75.0)];
           
            [menuData addObject:button];
            
        }
        
        //init the reused cell
        reuseCell = [[UITableViewCell alloc]initWithStyle:UITableViewCellStyleDefault
                                          reuseIdentifier:@"menucell"];
        
        
    }
    return self;
}

/* **May need this function if I find out how to do the annimations***
 
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect
{
    // Drawing code
}
*/

#pragma mark UITableView Methods

-(NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return 1;
}

-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return 15;
}

-(UITableViewCell*)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    UITableViewCell *cell = [self dequeueReusableCellWithIdentifier:@"menucell"];
    
    if (cell == nil)
    {
        cell = [[UITableViewCell alloc]initWithStyle:UITableViewCellStyleDefault
                                     reuseIdentifier:@"menucell"];
    }
    
    UIButton *button = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    [button setFrame:CGRectMake(10.0,
                                10.0,
                                75.0,
                                75.0)];
    
    
    [cell addSubview:button];
    return cell;
}

@end
