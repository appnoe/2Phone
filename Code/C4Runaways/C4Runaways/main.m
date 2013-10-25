//
//  main.m
//  C4Runaways
//
//  Created by Klaus Rodewig on 16.03.13.
//  Copyright (c) 2013 Foobar 23. All rights reserved.
//

#import <Foundation/Foundation.h>

#define SQUARE(x) x * x

#ifdef DEBUG
    #define FOOBAR 23
#else
    #define FOOBAR 42
#endif


void foobar(){
    NSLog(@"Funktion foo");
}

void foobarWithString(NSString *theString){
    NSLog(@"theString: %@", theString);
}

int foobarWithStringAndReturn(NSString *theString){
    NSLog(@"theString: %@", theString);
    return (int)[theString length];
}

void oddOrEven(int theNumber){
    if((theNumber%2) == 0)
        NSLog(@"%d ist gerade", theNumber);
    else
        NSLog(@"%d ist ungerade", theNumber);
}

int main(int argc, const char * argv[])
{

    @autoreleasepool {
        
        // insert code here...
        int zahl;
        zahl = 42;
        NSLog(@"zahl: %i", zahl);
        zahl = 23;
        NSLog(@"zahl: %i", zahl);
        
        NSLog(@"-----");
        
        NSLog(@"Speicherplatz int: %ld Byte\n", sizeof(int) );
        NSLog(@"Minimum: %d\n", INT_MIN);
        NSLog(@"Maximum: %d\n", INT_MAX);
        NSLog(@"Maximum unsigned: %ld\n", UINT_MAX);
        
        NSLog(@"-----");
        
        int foo = 43;
        NSLog(@"foo: %i", foo);
        if(foo==23)
            NSLog(@"foo ist 23");
        else
            NSLog(@"foo ist: %i", foo);
        
        if(foo == 23)
            NSLog(@"Illuminaten!");
        else if(foo == 42)
            NSLog(@"Wie war die Frage?");
        else
            NSLog(@"Nichts genaues weiß man nicht.");
        
        NSLog(@"-----");
        
        switch(foo){
            case 23: NSLog(@"foo: 23");
                break;
            case 42: NSLog(@"foo: 42");
                break;
            case 43: NSLog(@"foo: 43");
                break;
            case 44: NSLog(@"foo: 44");
                break;
            default:NSLog(@"foo ist anders");
        }
        
        NSLog(@"-----");
        
        NSLog(@"Jetzt kommt ein Karton!");
        goto MERKE;
        NSLog(@"Wie meinen?");
        MERKE:NSLog(@"Ich wollte doch noch was gesagt haben …");

        NSLog(@"-----");
        
        for(int i=1; i<=10; i++){
            NSLog(@"i: %d", i);
        }

        for(int i=10; i>=1; i--){
            NSLog(@"i: %d", i);
        }

        for(int i=10; i>=1; i--){
            NSLog(@"i: %d", i);
            i--;
        }

        NSLog(@"-----");
        
        int i = 11;
        while (i<=10){
            NSLog(@"while-i: %d", i);
            i++;
        }
        
        NSLog(@"-----");
        
        i = 11;
        do {
            NSLog(@"do-while-i: %d", i);
            i++;
        } while (i<=10);
        
        NSLog(@"-----");
        
        for(int i=1; i<=10; i++){
            if(i == 5)
                continue;
            else if (i==7)
                break;
            NSLog(@"i: %d", i);
        }
        
        NSLog(@"-----");
        
        foo = 23;
        NSLog(@"foo vorher: %d", foo++);
        NSLog(@"foo nachher: %d", foo);

        NSLog(@"-----");
        
        foo = 23;
        NSLog(@"foo vorher: %d", ++foo);
        NSLog(@"foo nachher: %d", foo);
        
        foobar();
        foobarWithString(@"Moin!");
        NSLog(@"foobar: %d", foobarWithStringAndReturn(@"Foobar!!drölf"));
        
        NSLog(@"-----");
        
        oddOrEven(2);
        oddOrEven(276);
        oddOrEven(134621);
        oddOrEven(9834599);
        
        NSLog(@"-----");
        
        NSLog(@"Integer: %ld", sizeof(int));
        
        foo = 23;
        
        NSLog(@"Adresse von foo: %p", &foo);
        
        int *bar;
        
        NSLog(@"Adresse von bar: %p", bar);
        NSLog(@"Wert von bar: %d", *bar);
        
        bar = &foo;
        
        NSLog(@"Zieladresse von bar: %p", bar);
        NSLog(@"bar: %d", *bar);
        foo++;
        NSLog(@"bar: %d", *bar);
        bar++;
        NSLog(@"bar: %d", *bar);
        NSLog(@"Zieladresse von bar: %p", bar);
        NSLog(@"Größe von bar: %ld", sizeof(bar));
        NSLog(@"Größe von foo: %ld", sizeof(foo));
        NSLog(@"Größe von int: %ld", sizeof(int));
        
        
        /* Noch …
         … mehr …
         … Platz …
         … für …
         … Kommentare
         */
        NSLog(@"Quadrat von 2: %i", SQUARE(2));
        NSLog(@"Makro: %i", FOOBAR);
    }
    return 0;
}

