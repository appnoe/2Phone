//
//  DBDiveCenter.m
//  Deep Blue
//
//  Created by Klaus Rodewig on 01.02.13.
//  Copyright (c) 2013 Deep Blue Diving S.L. All rights reserved.
//

#import "DBDiveCenter.h"

@implementation DBDiveCenter
-(id)initWithData:(NSString*)theName icon:(UIImage*)theIcon image:(UIImage*)theImage latitude:(NSNumber*)theLatitude longitude:(NSNumber *)theLongitude
{
    NSLog(@"%s",__PRETTY_FUNCTION__);
    self = [super init];
    if (self) {
        self.name = theName;
        self.icon = theIcon;
        self.image = theImage;
        self.latitude = theLatitude;
        self.longitude = theLongitude;
    }
    return self;
}
@end
