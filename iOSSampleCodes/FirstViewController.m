//
//  FirstViewController.m
//  iOSSampleCodes
//
//  Created by TimChen on 2016/7/8.
//  Copyright © 2016年 dogtim. All rights reserved.
//

#import "FirstViewController.h"

@interface FirstViewController ()
@property (nonatomic, strong) NSArray * browseData;
@end

@implementation FirstViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [[self tableView] registerClass:[UITableViewCell class] forCellReuseIdentifier:@"TableCell"];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - UITableViewDataSource

- (UITableViewCell *) tableView:(UITableView *)tableView
            cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"TableCell"];
    [cell textLabel].text = @"chu";
    return cell;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return 3;
}

#pragma mark - UITableViewDelegate
- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    NSURL *myURL;
    NSString *testing;
    switch (indexPath.section) {
        case 0:
            myURL = [NSURL URLWithString:testing];
            [[UIApplication sharedApplication] openURL:myURL];
            
            break;
        case 1:
            break;
        case 2:
            break;
        default:
            break;
    }
}
@end
