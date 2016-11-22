//
//  MainMenuController.m
//  VariousButtons
//
//  Created by Vols on 14/3/30.
//  Copyright © 2014年 Vols. All rights reserved.
//

#import "MainMenuController.h"

#import "NormalButtonController.h"
#import "LineButtonController.h"
#import "FlatButtonController.h"
#import "EffectsButtonController.h"
#import "RadioButtonController.h"

@interface MainMenuController ()<UITableViewDelegate, UITableViewDataSource>

@property (nonatomic, strong) UITableView   * tableView;
@property (nonatomic, strong) NSArray       * dataSource;

@end

@implementation MainMenuController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self initData];
    [self displayUIs];
}

- (void)initData{
    _dataSource =  @[@"Normal Button", @"Line&Flat Button", @"Button", @"特效按钮", @"Radio Button、Switch"];
}


- (void)displayUIs{
    self.title = @"VariousButtons";
    self.view.backgroundColor = [UIColor purpleColor];
    [self.view addSubview:self.tableView];
}


- (UITableView *)tableView{
    
    if (!_tableView) {
        _tableView = [[UITableView alloc] initWithFrame:self.view.bounds style:UITableViewStyleGrouped];
        _tableView.delegate = self;
        _tableView.dataSource = self;
        _tableView.rowHeight = 44;
        [_tableView registerClass:[UITableViewCell class] forCellReuseIdentifier:@"cell_identifier"];
    }
    return _tableView;
}

#pragma mark - UITableViewDelegate Methods

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    
    return _dataSource.count;
}

- (UITableViewCell *) tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    UITableViewCell * cell = [tableView dequeueReusableCellWithIdentifier:@"cell_identifier"];
    [cell.contentView.subviews makeObjectsPerformSelector:@selector(removeFromSuperview)];
    cell.textLabel.text = _dataSource[indexPath.row];
    
    return cell;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{

    if (indexPath.row == 0) {
        [self.navigationController pushViewController:[[NormalButtonController alloc] init] animated:YES];
    }
    else if (indexPath.row == 1) {
        [self.navigationController pushViewController:[[LineButtonController alloc] init] animated:YES];
    }
    else if (indexPath.row == 2) {
        [self.navigationController pushViewController:[[FlatButtonController alloc] init] animated:YES];
    }
    else if (indexPath.row == 3) {
//        [self.navigationController pushViewController:[[EffectsButtonController alloc] init] animated:YES];
        [self performSegueWithIdentifier:@"ToEffectsSegue" sender:self];  
    }
    else if (indexPath.row == 4) {
        [self.navigationController pushViewController:[[RadioButtonController alloc] init] animated:YES];
    }
    
    [self performSelector:@selector(deselect:) withObject:tableView afterDelay:0.2f];
}

- (void)deselect:(UITableView *)tableView {
    [tableView deselectRowAtIndexPath:[tableView indexPathForSelectedRow] animated:YES];
}




- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
