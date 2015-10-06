//
//  ViewController.m
//  CardGame
//
//  Created by Xiaoming Chen on 15/8/19.
//  Copyright (c) 2015年 Jackchenxm. All rights reserved.
//

#import "ViewController.h"
#import "PlayingCardDeck.h"

@interface ViewController ()
@property (strong, nonatomic) PlayingCardDeck *theDeck;
@property (strong, nonatomic) PlayingCardDeck *anotherDeck;
@property (strong, nonatomic) IBOutlet UILabel *changeableCard;
@property (strong, nonatomic) IBOutlet UILabel *bossCard;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)drawCard:(UIButton *)sender {
    self.theDeck = [[PlayingCardDeck alloc]init];
    Card *randomCard = nil;
    randomCard = [self.theDeck drawRandomCard];
    self.changeableCard.text = randomCard.contents;
    
    self.anotherDeck = [[PlayingCardDeck alloc]initWithoutRank:randomCard.number];
    self.bossCard.text = [self.anotherDeck drawRandomCard].contents;
}
@end
