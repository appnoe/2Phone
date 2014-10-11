//
//  DBDiveCenter.h
//  Deep Blue
//
//  Created by Klaus Rodewig on 09.10.14.
//  Copyright (c) 2014 Deep Blue S.L. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@interface DBDiveCenter : NSObject
@property (copy) NSString *name;
@property (retain) UIImage *icon;
@property (retain) UIImage *image;
@property (retain) NSNumber *latitude;
@property (retain) NSNumber *longitude;
-(id)initWithData:(NSString*)theName icon:(UIImage*)theIcon image:(UIImage*)theImage latitude:(NSNumber*)theLatitude longitude:(NSNumber *)theLongitude;
@end
