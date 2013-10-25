//
//  Trompete.h
//  OOP
//
//  Created by Klaus Rodewig on 05.01.13.
//  Copyright (c) 2013 KMR. All rights reserved.
//

#import "Instrument.h"

@interface Trompete : Instrument
@property (copy) NSString *art;
@property (copy) NSString *stimmung;
@property BOOL hatMundStueck;
-(id)initWithValues:(NSString *)derHersteller
              preis:(NSNumber *)derPreis
              alter:(NSNumber *)dasAlter
                art:(NSString *)dieArt
           stimmung:(NSString *)dieStimmung
      hatMundStueck:(BOOL)boolHatMundStueck;
-(void)printDataToConsole;

@end
