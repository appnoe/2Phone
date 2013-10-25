//
//  Trompete.m
//  OOP
//
//  Created by Klaus Rodewig on 05.01.13.
//  Copyright (c) 2013 KMR. All rights reserved.
//

#import "Trompete.h"

@implementation Trompete
-(id)initWithValues:(NSString *)derHersteller
              preis:(NSNumber *)derPreis
              alter:(NSNumber *)dasAlter
                art:(NSString *)dieArt
           stimmung:(NSString *)dieStimmung
      hatMundStueck:(BOOL)boolHatMundStueck{
    NSLog(@"%s",__PRETTY_FUNCTION__);
    self = [self init];
    if(self != nil){
        self.hersteller = derHersteller;
        self.preis = derPreis;
        self.alter = dasAlter;
        self.art = dieArt;
        self.stimmung = dieStimmung;
        self.hatMundStueck = boolHatMundStueck;
    }
    return self;
}

-(void)printDataToConsole{
    NSLog(@"%s",__PRETTY_FUNCTION__);
    NSLog(@"Hersteller: %@", self.hersteller);
    NSLog(@"Preis: %@ €", self.preis);
    NSLog(@"Alter: %@", self.alter);
    NSLog(@"Art: %@", self.art);
    NSLog(@"Stimmung: %@", self.stimmung);
    if(self.hatMundStueck)
        NSLog(@"Mundstück: ja");
    else
        NSLog(@"Mundstück: nein");
}



@end
