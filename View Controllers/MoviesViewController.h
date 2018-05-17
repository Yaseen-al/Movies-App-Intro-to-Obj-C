//
//  MoviesViewController.h
//  MoviesAppObjective-C
//
//  Created by Yaseen Al Dallash on 5/16/18.
//  Copyright © 2018 Yaseen Al Dallash. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface MoviesViewController : UIViewController<UITableViewDataSource, UITableViewDelegate, UISearchBarDelegate>

@property(strong, atomic) UITableView *moviesTableView;
@property(strong, nonatomic) UISearchBar *searchBar;
@property(strong, nonatomic)NSArray *movies;
@property(copy, nonatomic)NSString *searchTerm;

@end
