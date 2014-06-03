//
//  ESViewController.m
//  Entries
//
//  Created by John D. Storey on 5/31/14.
//  Copyright (c) 2014 DevMountain. All rights reserved.
//

#import "ESViewController.h"
#import "ESEntryController.h"

@interface ESViewController ()

@end

@implementation ESViewController

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
    // Do any additional setup after loading the view.
    ESEntry *entry = [[ESEntry alloc]init];
    entry.title = @"first entry";
    entry.note =@"first note";
    entry.date = [NSDate date];
    
    ESEntryController *entryController = [ESEntryController sharedInstance];
    [entryController addEntry:entry];

}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
