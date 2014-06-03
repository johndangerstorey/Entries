//
//  ESEntry.m
//  Entries
//
//  Created by John D. Storey on 5/31/14.
//  Copyright (c) 2014 DevMountain. All rights reserved.
//

#import "ESEntry.h"
static NSString * const titleKey = @"titleKey";
static NSString * const flagKey = @"flagKey";

@implementation ESEntry

-(NSDictionary *)entryDictionary{
    NSMutableDictionary *dictionary = [NSMutableDictionary new];
    if(self.title != nil){
        [dictionary setObject:self.title forKey:titleKey];
    }
    if(self.note != nil){
        [dictionary setObject:self.note forKey:@"note"];
    }
    if(self.date != nil){
        [dictionary setObject:self.date forKey:@"date"];
    }
    return dictionary;
}

-(id)initWithDictionary:(NSDictionary *)dictionary{
    self = [super init];
    self.title = dictionary[@"title"];
    self.note = dictionary[@"note"];
    self.date = dictionary[@"date"];
    
    return self;
}






@end
