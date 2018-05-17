//
//  MovieDetailViewController.m
//  MoviesAppObjective-C
//
//  Created by Yaseen Al Dallash on 5/16/18.
//  Copyright © 2018 Yaseen Al Dallash. All rights reserved.
//

#import "MovieDetailViewController.h"

@interface MovieDetailViewController ()

@end

@implementation MovieDetailViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self allocInitSubViews];
    [self addSubViews];
    [self configureSubViews];
    [self configureViews];
    self.view.backgroundColor = UIColor.whiteColor;
}
-(instancetype)initWithMovie:(Movie *)movie{
    self = [super init];
    if (self){
        _movie = movie;
    }
    return self;
}
-(void) allocInitSubViews{
    _movieImageView = [[UIImageView alloc] initWithFrame:CGRectZero];
    _movieTitle = [[UILabel alloc] initWithFrame:CGRectZero];
    _movieYear = [[UILabel alloc] initWithFrame:CGRectZero];
    _movieGenre = [[UILabel alloc] initWithFrame:CGRectZero];
    _movieDescription = [[UILabel alloc] initWithFrame:CGRectZero];
    
    
}
-(void) configureViews{
    _movieImageView.image = [UIImage imageNamed:[self.movie imageName]];
    _movieTitle.text = self.movie.name;
    _movieYear.text = [NSString stringWithFormat:@"%d", self.movie.year];
    _movieDescription.text = self.movie.longDescription;
    _movieDescription.numberOfLines = 0;
    [_movieImageView setContentMode:UIViewContentModeScaleAspectFit];
    switch (self.movie.genre) {
        case Genre_Drama:
            _movieGenre.text = @"Drama";
            break;
        case Genre_Animation:
            _movieGenre.text = @"Animation";
            break;
        case Genre_Action:
            _movieGenre.text = @"Action";
            break;
    }
    
}
-(void) addSubViews{
    [self.view addSubview:self.movieImageView];
    [self.view addSubview:self.movieTitle];
    [self.view addSubview:self.movieYear];
    [self.view addSubview:self.movieGenre];
    [self.view addSubview:self.movieDescription];

    
    
}
-(void) configureSubViews{
    // configure constraint for the movie Image
    self.movieImageView.translatesAutoresizingMaskIntoConstraints = NO;
    [NSLayoutConstraint activateConstraints:@[[self.movieImageView.topAnchor constraintEqualToAnchor:self.view.safeAreaLayoutGuide.topAnchor constant:20],
    [self.movieImageView.leftAnchor constraintEqualToAnchor:self.view.safeAreaLayoutGuide.leftAnchor constant:10],
    [self.movieImageView.heightAnchor constraintEqualToAnchor:self.view.safeAreaLayoutGuide.heightAnchor multiplier:0.35],
    [self.movieImageView.widthAnchor constraintEqualToAnchor:self.view.safeAreaLayoutGuide.widthAnchor multiplier:0.45]
     ]];
    // Configure constraints for the movie Title
    self.movieTitle.translatesAutoresizingMaskIntoConstraints = NO;
    [NSLayoutConstraint activateConstraints: @[
    [self.movieTitle.topAnchor constraintEqualToAnchor: self.view.safeAreaLayoutGuide.topAnchor constant: 10],
    [self.movieTitle.leftAnchor constraintEqualToAnchor: self.movieImageView.rightAnchor constant: 10],
    [self.movieTitle.rightAnchor constraintEqualToAnchor: self.view.safeAreaLayoutGuide.rightAnchor constant: 10]
    ]];
    
    //Configure constraints for the movie Year
    self.movieYear.translatesAutoresizingMaskIntoConstraints = NO;
    [NSLayoutConstraint activateConstraints: @[
    [self.movieYear.topAnchor constraintEqualToAnchor: self.movieTitle.bottomAnchor constant: 10],
    [self.movieYear.leftAnchor constraintEqualToAnchor: self.movieImageView.rightAnchor constant: 10],
    [self.movieYear.rightAnchor constraintEqualToAnchor: self.view.safeAreaLayoutGuide.rightAnchor constant: 10]
    ]];
    //Configure constraints for the movie Genre
    self.movieGenre.translatesAutoresizingMaskIntoConstraints = NO;
    [NSLayoutConstraint activateConstraints: @[
    [self.movieGenre.topAnchor constraintEqualToAnchor: self.movieYear.bottomAnchor constant: 10],
    [self.movieGenre.leftAnchor constraintEqualToAnchor: self.movieImageView.rightAnchor constant: 10],
    [self.movieGenre.rightAnchor constraintEqualToAnchor: self.view.safeAreaLayoutGuide.rightAnchor constant: 10]
    ]];
    
    //Configure Constraints for the movie Desscription
    self.movieDescription.translatesAutoresizingMaskIntoConstraints = NO;
    [NSLayoutConstraint activateConstraints:@[
    [self.movieDescription.topAnchor constraintEqualToAnchor:self.movieImageView.bottomAnchor constant:10],
    [self.movieDescription.leftAnchor constraintEqualToAnchor:self.view.safeAreaLayoutGuide.leftAnchor constant:10],
    [self.movieDescription.rightAnchor constraintEqualToAnchor:self.view.safeAreaLayoutGuide.rightAnchor constant: -10],
    [self.movieDescription.bottomAnchor constraintEqualToAnchor:self.view.safeAreaLayoutGuide.bottomAnchor constant:10]
     ]];
    
}

@end
