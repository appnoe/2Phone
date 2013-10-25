//
//  Instrument.h
//  OOP
//
//  Created by Klaus Rodewig on 05.01.13.
//  Copyright (c) 2013 KMR. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Instrument : NSObject
@property (copy) NSString *hersteller;
@property NSNumber *alter;
@property NSNumber *preis;
-(void)spieleTon:(NSString*)Ton;
@end
