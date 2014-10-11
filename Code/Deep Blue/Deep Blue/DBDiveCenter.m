//
//  DBDiveCenter.m
//  Deep Blue
//
//  Created by Klaus Rodewig on 09.10.14.
//  Copyright (c) 2014 Deep Blue S.L. All rights reserved.
//

#import "DBDiveCenter.h"

@implementation DBDiveCenter

-(id)initWithData:(NSString*)theName
             icon:(UIImage*)theIcon
            image:(UIImage*)theImage
         latitude:(NSNumber*)theLatitude
        longitude:(NSNumber *)theLongitude
{
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
