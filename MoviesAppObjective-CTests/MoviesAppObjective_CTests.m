//
//  MoviesAppObjective_CTests.m
//  MoviesAppObjective-CTests
//
//  Created by Yaseen Al Dallash on 5/16/18.
//  Copyright © 2018 Yaseen Al Dallash. All rights reserved.
//

#import <XCTest/XCTest.h>
#import "Movie.h"
@interface MoviesAppObjective_CTests : XCTestCase

@end

@implementation MoviesAppObjective_CTests



-(void) testMovies{
    NSArray *myMovies = [[NSArray alloc] init];
    myMovies = [Movie testMovies];
    int expectedNumberOfMovies = 9;
    XCTAssertEqual(myMovies.count, expectedNumberOfMovies);
    
}

@end
