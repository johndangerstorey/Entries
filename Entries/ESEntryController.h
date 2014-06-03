//
//  ESEntryController.h
//  Entries
//
//  Created by John D. Storey on 5/31/14.
//  Copyright (c) 2014 DevMountain. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "ESEntry.h"

@interface ESEntryController : NSObject

@property (strong, readonly) NSArray *entries;

-(void)addEntry:(ESEntry *)entry;
-(void)removeEntry:(ESEntry *)entry;
-(void)loadFromDefaults;

+ (ESEntryController *)sharedInstance;


@end
