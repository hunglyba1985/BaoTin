//
//  ArticleRealm.m
//  SpecialMagazine
//
//  Created by MobileFolk on 2017-01-04.
//  Copyright © 2017 Macbook Pro. All rights reserved.
//

#import "ArticleRealm.h"

@implementation ArticleRealm

- (instancetype)initWithDictionary:(NSDictionary*)dictionary
{
    if (self = [super init]) {
        
        self.sid = [[dictionary objectForKey:SID] intValue];
        self.content = [dictionary objectForKey:CONTENT];
        self.coverImageUrl = [dictionary objectForKey:COVER_IMAGE];
        self.descriptionArticle = [dictionary objectForKey:DESC];
        self.hasVideos =[NSNumber numberWithBool: [[dictionary objectForKey:HAS_VIDEOS] boolValue]];
        self.lid = [[dictionary objectForKey:LID] intValue];
        NSArray *listPictures = [dictionary objectForKey:LIST_IMAGES];
        self.listImages = [NSKeyedArchiver archivedDataWithRootObject:listPictures];
        NSArray *listMp4 = [dictionary objectForKey:LIST_VIDEOS];
        self.listVideos =  [NSKeyedArchiver archivedDataWithRootObject:listMp4];
        self.postTime = [[dictionary objectForKey:POST_TIME] doubleValue];
        self.titleArticle = [dictionary objectForKey:TITLE_ARTICLE];
        self.originalLink = [dictionary objectForKey:ORIGINAL_LINK];
        self.cid = [[dictionary objectForKey:CID] intValue];
        
        
    }
    
    return self;
}



// Specify default values for properties

//+ (NSDictionary *)defaultPropertyValues
//{
//    return @{};
//}

// Specify properties to ignore (Realm won't persist these)

//+ (NSArray *)ignoredProperties
//{
//    return @[];
//}

@end
