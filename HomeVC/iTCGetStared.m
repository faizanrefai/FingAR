//
//  iTCGetStared.m
//  FingAR
//
//  Created by Faizan on 28/08/12.
//  Copyright (c) 2012 ronak@itechcoders.com. All rights reserved.
//

#import "iTCGetStared.h"

#import "iTCsearchVC.h"


@interface iTCGetStared ()

@end

@implementation iTCGetStared

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    // Do any additional setup after loading the view from its nib.
}

-(void)viewWillAppear:(BOOL)animated
{

    [super viewWillAppear:animated];
    [self performSelector:@selector(navBar) withObject:nil afterDelay:0.25];

}
-(void)navBar
{
    self.navigationController.navigationBarHidden=NO;

}

- (void)viewDidUnload
{
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}

- (IBAction)searachPressed:(id)sender {
    
    iTCsearchVC *sear = [[iTCsearchVC alloc]initWithNibName:@"iTCsearchVC" bundle:nil];
    [self.navigationController pushViewController:sear animated:YES];
}


@end
