//
//  PlayingCard.h
//  CardGame
//
//  Created by Xiaoming Chen on 15/8/20.
//  Copyright (c) 2015年 Jackchenxm. All rights reserved.
//

#import "Card.h"

@interface PlayingCard : Card

@property (strong, nonatomic) NSString *suit;
@property (nonatomic) NSUInteger rank;
@property (strong, nonatomic) NSString *joker;

+ (NSArray *)validSuits;
+ (NSUInteger)maxRank;

@end
