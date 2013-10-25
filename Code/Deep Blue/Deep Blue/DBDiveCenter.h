//
//  DBDiveCenter.h
//  Deep Blue
//
//  Created by Klaus Rodewig on 01.02.13.
//  Copyright (c) 2013 Deep Blue Diving S.L. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface DBDiveCenter : NSObject
@property (retain) NSString *name;
@property (retain) UIImage *icon;
@property (retain) UIImage *image;
@property (retain) NSNumber *latitude;
@property (retain) NSNumber *longitude;
-(id)initWithData:(NSString*)theName icon:(UIImage*)theIcon image:(UIImage*)theImage latitude:(NSNumber*)theLatitude longitude:(NSNumber *)theLongitude;
@end
