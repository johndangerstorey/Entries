//
//  ESEntry.h
//  Entries
//
//  Created by John D. Storey on 5/31/14.
//  Copyright (c) 2014 DevMountain. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface ESEntry : NSObject


@property (strong, nonatomic) NSString *title;
@property (strong, nonatomic) NSDate *date;
@property (strong, nonatomic) NSString *note;

-(NSDictionary *)entryDictionary;
-(id)initWithDictionary:(NSDictionary *)dictionary;

@end
