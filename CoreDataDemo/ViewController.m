//
//  ViewController.m
//  CoreDataDemo
//
//  Created by Lynch on 7/1/14.
//  Copyright (c) 2014 Lynch. All rights reserved.
//

#import "ViewController.h"
#import "Entity.h"
#import "AppDelegate.h"

@interface ViewController ()

@end

@implementation ViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.myDelegate = [UIApplication sharedApplication].delegate;
    Entity *entity = [NSEntityDescription insertNewObjectForEntityForName:@"Entity" inManagedObjectContext:self.myDelegate.managedObjectContext];
    entity.name = @"12";
    entity.age = [NSNumber numberWithInteger:12];
    NSError *error;
    BOOL isSucces = [self.myDelegate.managedObjectContext save:&error];
    NSLog(@"? : %hhd", isSucces);
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
