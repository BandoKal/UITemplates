//
//  ViewController.m
//  PopOverProto
//
//  Created by Jason Bandy on 3/29/13.
//  Copyright (c) 2013 BandoTech. All rights reserved.
//

#import "DetailViewController.h"

@interface DetailViewController ()
{
    MenuTableView *menu;
    BOOL menuLoaded;
}

@end

@implementation DetailViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    menuLoaded = NO;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)buttonPressed:(id)sender {
    
    // create instance of the the menu table view
    // add it to the current view
    if (!menuLoaded)
    {
        menu = [[MenuTableView alloc]initWithParentViewController:self];
        menuLoaded = YES;
    }
//    CGRect menuFrame = CGRectMake(0, 0, 85.0, self.view.frame.size.height);
//    menu = [[MenuTableView alloc]initWithFrame:menuFrame
//                                                        style:UITableViewStylePlain];
//    menu.backgroundColor = [UIColor grayColor];
//    menu.rowHeight = 85.0;
//    
////    [UIView transitionWithView:mysuperview duration:0.75 options:UIViewAnimationTransitionFlipFromRight animations:^{ [myview removeFromSuperview]; } completion:nil]
//    
//    
//    [self.view addSubview:menu];
}

- (IBAction)offButtonPressed:(id)sender {
    
    [menu removeFromSuperview];
    menuLoaded = NO;
}
- (IBAction)swipeRight:(id)sender {
    
    // create instance of the the menu table view
    // add it to the current view
    if (!menuLoaded)
    {
        menu = [[MenuTableView alloc]initWithParentViewController:self];
        menuLoaded = YES;
    }
}

- (IBAction)swipeLeft:(id)sender
{
    [menu removeFromSuperview];
    menuLoaded = NO;
}
@end
