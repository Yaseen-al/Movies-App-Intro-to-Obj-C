//
//  MovieTableViewCell.m
//  MoviesAppObjective-C
//
//  Created by Yaseen Al Dallash on 5/16/18.
//  Copyright © 2018 Yaseen Al Dallash. All rights reserved.
//

#import "MovieTableViewCell.h"
#import "Movie.h"
@implementation MovieTableViewCell



- (void)awakeFromNib {
    [super awakeFromNib];
    // Initialization code
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}
-(void)configureCellWithMovie:(Movie *)movie {
    self.nameLabel.text = movie.name;
    NSString *genreText;
    switch (movie.genre) {
        case Genre_Action:
            genreText = @"Action";
            break;
        case Genre_Drama:
            genreText = @"Drama";
            break;
        case Genre_Animation:
            genreText = @"Animation";
            break;
    }
    self.genreLabel.text = genreText;
    self.descriptionLabel.text = movie.longDescription;
    self.yearLabel.text = [NSString stringWithFormat:@"%d", movie.year];
    self.movieImageView.image = [UIImage imageNamed:[movie imageName]];
}

@end
