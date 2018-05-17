//
//  Moview.m
//  MoviesAppObjective-C
//
//  Created by Yaseen Al Dallash on 5/16/18.
//  Copyright © 2018 Yaseen Al Dallash. All rights reserved.
//

#import "Movie.h"

@implementation Movie

-(instancetype)initWithName:(NSString *)name andDescription:(NSString *)description andYear:(int)year andGenre:(Genre)genre{
    self = [super init];
    if (self){
        _name = name;
        _longDescription = description;
        _year = year;
        _genre = genre;
    }
    return self;
}
-(NSString*)imageName{
    return [[self.name lowercaseString] stringByReplacingOccurrencesOfString:@" " withString:@"_"];
}

+(NSArray*) testMovies {
    Movie *minions = [[Movie alloc] initWithName:@"Minions" andDescription:@"Evolving from single-celled yellow organisms at the dawn of time, Minions live to serve, but find themselves working for a continual series of unsuccessful masters, from T. Rex to Napoleon. Without a master to grovel for, the Minions fall into a deep depression. But one minion, Kevin, has a plan." andYear:2015 andGenre:Genre_Animation];
    Movie *shrek = [[Movie alloc] initWithName:@"Shrek" andDescription:@"Once upon a time, in a far away swamp, there lived an ogre named Shrek whose precious solitude is suddenly shattered by an invasion of annoying fairy tale characters. They were all banished from their kingdom by the evil Lord Farquaad. Determined to save their home -- not to mention his -- Shrek cuts a deal with Farquaad and sets out to rescue Princess Fiona to be Farquaad\"s bride. Rescuing the Princess may be small compared to her deep, dark secret." andYear:2001 andGenre:Genre_Animation];
    Movie *zootopia = [[Movie alloc] initWithName:@"Zootopia" andDescription:@"From the largest elephant to the smallest shrew, the city of Zootopia is a mammal metropolis where various animals live and thrive. When Judy Hopps becomes the first rabbit to join the police force, she quickly learns how tough it is to enforce the law." andYear:2016 andGenre:Genre_Animation];
    Movie *avatar = [[Movie alloc] initWithName:@"Avatar" andDescription:@"On the lush alien world of Pandora live the Na\"vi, beings who appear primitive but are highly evolved. Because the planet\"s environment is poisonous, human/Na\"vi hybrids, called Avatars, must link to human minds to allow for free movement on Pandora. Jake Sully, a paralyzed former Marine, becomes mobile again through one such Avatar and falls in love with a Na\"vi woman. As a bond with her grows, he is drawn into a battle for the survival of her world." andYear:2009 andGenre:Genre_Action];
    Movie *darkKnight = [[Movie alloc] initWithName:@"The Dark Knight" andDescription:@"With the help of allies Lt. Jim Gordon and DA Harvey Dent, Batman has been able to keep a tight lid on crime in Gotham City. But when a vile young criminal calling himself the Joker suddenly throws the town into chaos, the caped Crusader begins to tread a fine line between heroism and vigilantism." andYear:2008 andGenre:Genre_Action];
    Movie *transformers = [[Movie alloc] initWithName:@"Transformers" andDescription:@"The fate of humanity is at stake when two races of robots, the good Autobots and the villainous Decepticons, bring their war to Earth. The robots have the ability to change into different mechanical objects as they seek the key to ultimate power. Only a human youth, Sam Witwicky can save the world from total destruction." andYear:2007 andGenre:Genre_Action];
    Movie *titanic = [[Movie alloc] initWithName:@"Titanic" andDescription:@"The ill-fated maiden voyage of the R.M.S. Titanic; the pride and joy of the White Star Line and, at the time, the largest moving object ever built. She was the most luxurious liner of her era -- the \"ship of dreams\" -- which ultimately carried over 1,500 people to their death in the ice cold waters of the North Atlantic in the early hours of April 15, 1912." andYear:1997 andGenre:Genre_Drama];
    Movie *hungerGames = [[Movie alloc] initWithName:@"The Hunger Games" andDescription:@"Katniss Everdeen voluntarily takes her younger sister\"s place in the Hunger Games, a televised competition in which two teenagers from each of the twelve Districts of Panem are chosen at random to fight to the death." andYear:2012 andGenre:Genre_Drama];
    Movie *americanSniper = [[Movie alloc] initWithName:@"American Sniper" andDescription:@"Navy S.E.A.L. sniper Chris Kyle\"s pinpoint accuracy saves countless lives on the battlefield and turns him into a legend. Back home to his wife and kids after four tours of duty, however, Chris finds that it is the war he can\"t leave behind." andYear:2014 andGenre:Genre_Drama];
    return @[minions, shrek, zootopia, avatar, darkKnight,transformers,titanic,hungerGames,americanSniper];
}

@end
