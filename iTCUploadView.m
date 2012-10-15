//
//  iTCUploadView.m
//  FingAR
//
//  Created by Faizan on 28/08/12.
//  Copyright (c) 2012 ronak@itechcoders.com. All rights reserved.
//

#import "iTCUploadView.h"

@interface iTCUploadView ()

@end

@implementation iTCUploadView

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

-(void)mailComposeController:(MFMailComposeViewController *)controller didFinishWithResult:(MFMailComposeResult)result error:(NSError *)error{
    [self dismissModalViewControllerAnimated:YES];
    
}
-(IBAction) mailSentButtonPresed{
//    NSMutableArray *temp = [[NSMutableArray alloc]init];
//    for (NSDictionary *itm in arrayToMail) {
//        if ([itm valueForKey:@"Ticket_Image"]&&[itm valueForKey:@"Ticket_Image2"]) {
//            [temp addObject:[itm valueForKey:@"Ticket_Image"]];
//            [temp addObject:[itm valueForKey:@"Ticket_Image2"]];
//        }
//    }
//    NSArray *paths = NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES);
//    NSString *documentsDirectory = [paths objectAtIndex:0];
    MFMailComposeViewController *mailComposer = [[MFMailComposeViewController alloc] init] ;
    mailComposer.mailComposeDelegate = self;
    if ([MFMailComposeViewController canSendMail]) {
        [mailComposer setToRecipients:nil];
        [mailComposer setSubject:@"Ticket Photo"];
        [mailComposer setMessageBody:@"Here is a copy of my tickets." isHTML:NO];
//        for(NSString *name in temp ){
//          //  NSString *getImagePath = [documentsDirectory stringByAppendingPathComponent:[NSString stringWithFormat:@"%@.png",name] ];
//          //  img = [[UIImage alloc]initWithContentsOfFile:getImagePath];
//          //  [mailComposer addAttachmentData:[NSData dataWithData:UIImagePNGRepresentation(img)] mimeType:@"image/png" fileName:[NSString stringWithFormat:@"Ticket %@",name]];
//        }
        mailComposer.navigationBar.tintColor = [UIColor blackColor];
        [self presentModalViewController:mailComposer animated:YES];  
    }
        
}



@end
