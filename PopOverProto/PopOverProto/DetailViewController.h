//
//  ViewController.h
//  PopOverProto
//
//  Created by Jason Bandy on 3/29/13.
//  Copyright (c) 2013 BandoTech. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "MenuTableView.h"

@interface DetailViewController : UIViewController
- (IBAction)buttonPressed:(id)sender;
- (IBAction)offButtonPressed:(id)sender;

- (IBAction)swipeRight:(id)sender;
- (IBAction)swipeLeft:(id)sender;

@end
