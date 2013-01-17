//
//  iTCARView.m
//  FingAR
//
//  Created by Faizan on 28/08/12.
//  Copyright (c) 2012 ronak@itechcoders.com. All rights reserved.
//

#import "iTCARView.h"
#import "iTCUploadView.h"
@interface iTCARView ()

@end

@implementation iTCARView

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
    
    NSLog(@"Hello I am Log");
    // Do any additional setup after loading the view from its nib.
    
    self.title = @"Feeds";
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

- (IBAction)upLoadArClicked:(id)sender {
    iTCUploadView *obj = [[iTCUploadView alloc]initWithNibName:@"iTCUploadView" bundle:nil];
    [self.navigationController pushViewController:obj animated:YES];
    
}
@end
