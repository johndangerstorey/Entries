//
//  ESEntryController.m
//  Entries
//
//  Created by John D. Storey on 5/31/14.
//  Copyright (c) 2014 DevMountain. All rights reserved.
//

#import "ESEntryController.h"

@implementation ESEntryController

+ (ESEntryController *)sharedInstance {
    static ESEntryController *sharedInstance = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        sharedInstance = [[ESEntryController alloc] init];
        
        [sharedInstance loadFromDefaults];
    });
    return sharedInstance;
}

-(void)setEntries:(NSArray *)entries{
    _entries = entries;
    
    NSMutableArray *mutableArray = [[NSMutableArray alloc]initWithArray:@[@{@"title":@"Title From setEntries",@"note":@"Note from setEntries",@"date":@"Date From Set Entries"}]];
    entries = mutableArray;
    
}

-(void)addEntry:(ESEntry *)entry{
    
    NSMutableArray *newArray = [[NSMutableArray alloc] initWithArray:self.entries];
    [newArray addObject:entry];
    // directly sets the variable to the new array
    _entries = newArray;
    
}
-(void)removeEntry:(ESEntry *)entry{
    NSMutableArray *newArray = [[NSMutableArray alloc] initWithArray:self.entries];
    [newArray removeObject:entry];
    
}
-(void)loadFromDefaults{
    NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
    [defaults objectForKey:@"Entries Array"];
    
}

@end
