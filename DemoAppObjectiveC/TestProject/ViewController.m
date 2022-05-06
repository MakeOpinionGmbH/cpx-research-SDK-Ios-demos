    //
    //  ViewController.m
    //  TestProject
    //
    //  Created by Daniel Fredrich on 16.02.21.
    //

#import "ViewController.h"
@import CPXResearch;

@interface ViewController () <CPXResearchDelegate>

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    CPXResearch.shared.delegate = self;
    [CPXResearch.shared setSurveyWithVisible:YES];
}

- (void)onSurveyDidClose {
    NSLog(@"Did close single survey.");
}

- (void)onSurveysDidClose {
    NSLog(@"Did close survey list.");
}

- (void)onSurveyDidOpen {
    NSLog(@"Did open single survey.");
}

- (void)onSurveysDidOpen {
    NSLog(@"Did open survey list.");
}

- (void)onSurveysUpdated {
    NSLog(@"New surveys received.");
}

- (void)onTransactionsUpdatedWithUnpaidTransactions:(NSArray<TransactionModel *> * _Nonnull)unpaidTransactions {
    NSLog(@"New unpaid transactions received.");
}

@end
