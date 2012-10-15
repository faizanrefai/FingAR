//
//  iTCUploadView.h
//  FingAR
//
//  Created by Faizan on 28/08/12.
//  Copyright (c) 2012 ronak@itechcoders.com. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <MessageUI/MessageUI.h>
#import <MessageUI/MFMessageComposeViewController.h>

@interface iTCUploadView : UIViewController<MFMailComposeViewControllerDelegate>

{
    NSMutableArray *arrayToMail;


}



-(IBAction) mailSentButtonPresed;

@end
