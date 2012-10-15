//
//  iTCsearchVC.h
//  FingAR
//
//  Created by Faizan on 28/08/12.
//  Copyright (c) 2012 ronak@itechcoders.com. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface iTCsearchVC : UIViewController <UITableViewDataSource,UITableViewDelegate,UISearchBarDelegate>
{

    __weak IBOutlet UITableView *myTable;

}

@end
