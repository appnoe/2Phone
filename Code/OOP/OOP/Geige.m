//
//  Geige.m
//  OOP
//
//  Created by Klaus Rodewig on 03.01.13.
//  Copyright (c) 2013 KMR. All rights reserved.
//

#import "Geige.h"

@implementation Geige

- (id)init
{
    self = [super init];
    if (self) {
        self.hersteller = @"Geigen Kalle";
        self.preis = [NSNumber numberWithFloat:3.50];
        self.alter = [NSNumber numberWithInt:0];
    }
    return self;
}


@end
