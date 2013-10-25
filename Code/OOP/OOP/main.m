//
//  main.m
//  OOP
//
//  Created by Klaus Rodewig on 03.01.13.
//  Copyright (c) 2013 KMR. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Geige.h"
#import "Instrument.h"
#import "Pauke.h"
#import "Trompete.h"

int main(int argc, const char * argv[])
{

    @autoreleasepool {
        Geige *fiedel = [[Geige alloc] init];
        Instrument *instrument = [[Instrument alloc] init];
        Pauke *pauke = [[Pauke alloc] init];
        Trompete *troete = [[Trompete alloc] initWithValues:@"Blackburn" preis:[NSNumber numberWithFloat:999.99] alter:[NSNumber numberWithInt:23] art:@"Bachtrompete" stimmung:@"Es" hatMundStueck:YES];
        [fiedel spieleTon:@"Geig!"];
        [instrument spieleTon:@"?"];
        [pauke spieleTon:@"Umpf!"];
        [troete spieleTon:@"Trööt"];
        [troete printDataToConsole];
        
        
/*
        NSLog(@"Hello, World!");
        
        NSLog(@"Alter: %@, Hersteller: %@, Preis: %@", [fiedel alter], [fiedel hersteller], [fiedel preis]);
        [fiedel spieleTon:@"C"];
        [fiedel spieleTon:@"E"];
        [fiedel setAlter:[NSNumber numberWithInt:23]];
        [fiedel setHersteller:@"Foobar"];
        [fiedel setPreis:[NSNumber numberWithFloat:42.50]];
        NSLog(@"Alter: %@, Hersteller: %@, Preis: %@", [fiedel alter], [fiedel hersteller], [fiedel preis]);
 */
    }
    return 0;
}

