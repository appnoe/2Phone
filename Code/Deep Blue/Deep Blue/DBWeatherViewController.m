//
//  DBWeatherViewController.m
//  Deep Blue
//
//  Created by Klaus Rodewig on 25.02.13.
//  Copyright (c) 2013 Deep Blue Diving S.L. All rights reserved.
//

#import "DBWeatherViewController.h"

@interface DBWeatherViewController ()

@end

@implementation DBWeatherViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
   return self;
}

- (void)jsonData:(NSData *)theWeather {
    [self.theIndicator stopAnimating];
    self.theIndicator.alpha = 0;
    NSError *theError;
    NSDictionary *json = [NSJSONSerialization
                          JSONObjectWithData:theWeather
                          options:kNilOptions
                          error:&theError];
    
    self.theLogo.image = [UIImage imageWithData:[NSData dataWithContentsOfURL:[NSURL URLWithString:[[[json objectForKey:@"current_observation"]valueForKey:@"image"]valueForKey:@"url"]]]];
    self.theTemperature.text = [NSString stringWithFormat:@"%@ °Celsius", [[json objectForKey:@"current_observation"]valueForKey:@"temp_c"]];
    self.theWind.text = [NSString stringWithFormat:@"%@ km/h",[[json objectForKey:@"current_observation"]valueForKey:@"wind_kph"]];
    self.theCity.text = [[[json objectForKey:@"current_observation"]valueForKey:@"observation_location"]valueForKey:@"city"];
    self.theTime.text = [NSString stringWithFormat:@"%@",[[json objectForKey:@"current_observation"]valueForKey:@"observation_time"]];
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    [self.theIndicator startAnimating];
    dispatch_async(dispatch_get_global_queue
                   (DISPATCH_QUEUE_PRIORITY_DEFAULT, 0), ^{
                       NSLog(@"Fetching data …");
                       NSData* theData = [NSData dataWithContentsOfURL:[NSURL URLWithString:@"http://api.wunderground.com/api/f6d0173457aab515/conditions/q/Spain/Fuerteventura.json"]];
                       [self performSelectorOnMainThread:@selector(jsonData:)
                                              withObject:theData waitUntilDone:YES];
                   });
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
