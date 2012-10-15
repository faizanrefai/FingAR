//
//  iTCDetailView.h
//  FingAR
//
//  Created by Faizan on 28/08/12.
//  Copyright (c) 2012 ronak@itechcoders.com. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface iTCDetailView : UIViewController
{

    __weak IBOutlet UIImageView *imageVC;
    IBOutlet UITableViewCell *cellCustm;
    __weak IBOutlet UITableView *myTable;
}


@property (nonatomic,strong)NSString *titleing;

@end
