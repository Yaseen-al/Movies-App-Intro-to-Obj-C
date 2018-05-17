//
//  MoviesViewController.m
//  MoviesAppObjective-C
//
//  Created by Yaseen Al Dallash on 5/16/18.
//  Copyright © 2018 Yaseen Al Dallash. All rights reserved.
//

#import "MoviesViewController.h"
#import "MovieTableViewCell.h"
#import "MovieDetailViewController.h"
#import "Movie.h"
//By using define you will have a global cell name
#define CELLID "Movie Cell"
@interface MoviesViewController ()

@end

@implementation MoviesViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self setBackgroundColor];
    [self allocInitSubView];
    [self configureTableView];
    [self addSubViews];
    [self configureSubViews];
    [self loadData];
    self.searchBar.delegate = self;
}

#pragma mark - Setup UI
-(void)setBackgroundColor{
//    self.view.backgroundColor = UIColor.cyanColor;
//    self.moviesTableView.backgroundColor = UIColor.orangeColor;
}

-(void)configureSubViews{
    [self configureSearchBarConstraints];
    [self configureTableViewConstraint];
}

-(void)allocInitSubView{
    _moviesTableView = [[UITableView alloc] initWithFrame:CGRectZero];
    _searchBar = [[UISearchBar alloc] initWithFrame:CGRectZero];
    _movies = [[NSArray alloc] init];
    _searchTerm = @"";
    
}


-(void)configureTableView{
    self.moviesTableView.dataSource = self;
    self.moviesTableView.delegate = self;
    UINib* nib = [UINib nibWithNibName:@"MovieTableViewCell" bundle:nil];
    [self.moviesTableView registerNib:nib forCellReuseIdentifier:@CELLID];
    self.moviesTableView.rowHeight = UITableViewAutomaticDimension;
    self.moviesTableView.estimatedRowHeight = 200;
    
}

-(void)addSubViews{
    [self.view addSubview:self.searchBar];
    [self.view addSubview:self.moviesTableView];
}

-(void)configureSearchBarConstraints{
    self.searchBar.translatesAutoresizingMaskIntoConstraints = NO;
    [NSLayoutConstraint activateConstraints:@[
                                              [self.searchBar.topAnchor constraintEqualToAnchor:self.view.safeAreaLayoutGuide.topAnchor],
                                              [self.searchBar.leftAnchor constraintEqualToAnchor:self.view.safeAreaLayoutGuide.leftAnchor],
                                              [self.searchBar.rightAnchor constraintEqualToAnchor:self.view.safeAreaLayoutGuide.rightAnchor]
                                              ]];
}

-(void)configureTableViewConstraint{
    self.moviesTableView.translatesAutoresizingMaskIntoConstraints = NO;
    [NSLayoutConstraint activateConstraints:@[
                                              [self.moviesTableView.topAnchor constraintEqualToAnchor:self.searchBar.bottomAnchor],
                                              [self.moviesTableView.bottomAnchor constraintEqualToAnchor:self.view.bottomAnchor],
                                              [self.moviesTableView.leftAnchor constraintEqualToAnchor:self.view.safeAreaLayoutGuide.leftAnchor],
                                              [self.moviesTableView.rightAnchor constraintEqualToAnchor:self.view.safeAreaLayoutGuide.rightAnchor]]
     ];
}

-(void)loadData{
    _movies = [Movie testMovies];
}
-(NSArray*)filteredMovies{
    if ([_searchTerm  isEqual: @""]){
        return _movies;
    }
    NSPredicate *searchPredicate = [NSPredicate predicateWithFormat:@"name CONTAINS %@", self.searchTerm];
    return [_movies filteredArrayUsingPredicate:searchPredicate];
}

#pragma mark - TableView DataSource
- (nonnull UITableViewCell *)tableView:(nonnull UITableView *)tableView cellForRowAtIndexPath:(nonnull NSIndexPath *)indexPath {
    MovieTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@CELLID forIndexPath:indexPath];
    if (cell) {
        Movie *movieSetup = [self filteredMovies][indexPath.row];
        [cell configureCellWithMovie:movieSetup];
    }
    return cell;
}


- (NSInteger)tableView:(nonnull UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return  [self filteredMovies].count;
}
#pragma mark - TableView Delegates
- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    Movie *movieSetup = [self filteredMovies][indexPath.row];
    MovieDetailViewController * movieDetailViewController = [[MovieDetailViewController alloc] initWithMovie:movieSetup];
    [self.navigationController pushViewController:movieDetailViewController animated:true];
    
}
#pragma mark - SearchBar Delegate and Delegates
- (BOOL)searchBar:(UISearchBar *)searchBar shouldChangeTextInRange:(NSRange)range replacementText:(NSString *)text{
    //Why we intialized that using the range
    NSString *newSearchTerm = [searchBar.text stringByReplacingCharactersInRange:range withString:text];
    self.searchTerm = newSearchTerm;
    [self.moviesTableView reloadData];
    return true;
}
@end
