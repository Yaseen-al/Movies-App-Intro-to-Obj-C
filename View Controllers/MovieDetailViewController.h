//
//  MovieDetailViewController.h
//  MoviesAppObjective-C
//
//  Created by Yaseen Al Dallash on 5/16/18.
//  Copyright © 2018 Yaseen Al Dallash. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Movie.h"
@interface MovieDetailViewController : UIViewController

@property (strong, nonatomic) UIImageView *movieImageView;
@property (strong, nonatomic) UILabel *movieTitle;
@property (strong, nonatomic) UILabel *movieYear;
@property (strong, nonatomic) UILabel *movieGenre;
@property (strong, nonatomic) UILabel *movieDescription;

@property (strong, nonatomic) Movie* movie;

-(instancetype) initWithMovie: (Movie*) movie;


@end
