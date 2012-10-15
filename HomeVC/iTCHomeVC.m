//
//  iTCHomeVC.m
//  FingAR
//
//  Created by Faizan on 28/08/12.
//  Copyright (c) 2012 ronak@itechcoders.com. All rights reserved.
//

#import "iTCHomeVC.h"
#import "iTCGetStared.h"

@interface iTCHomeVC ()

@end

@implementation iTCHomeVC

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
    self.navigationController.navigationBarHidden=TRUE;

    // Do any additional setup after loading the view from its nib.
    
}
-(void)viewWillAppear:(BOOL)animated
{
    
    [super viewWillAppear:animated];
    [self performSelector:@selector(navBar) withObject:nil afterDelay:0.2];
    
}
-(void)navBar
{
    self.navigationController.navigationBarHidden=TRUE;
    
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

- (IBAction)getStaredPressed:(id)sender {
    
    iTCGetStared *obj = [[iTCGetStared alloc]initWithNibName:@"iTCGetStared" bundle:[NSBundle mainBundle]];
    [self.navigationController pushViewController:obj animated:YES];
    
    
}

- (IBAction)faceBookPressed:(id)sender {
}
@end
