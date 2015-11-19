//
//  DetailViewController.m
//  CollectionView
//
//  Created by Xiulan Shi on 11/18/15.
//  Copyright © 2015 Xiulan Shi. All rights reserved.
//

#import "DetailViewController.h"

@interface DetailViewController ()

@end

@implementation DetailViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    self.view.backgroundColor = [UIColor yellowColor];
    
    UIButton *backButton = [UIButton buttonWithType:UIButtonTypeCustom];
    backButton.frame = CGRectMake(50, 50, 100, 100);
    backButton.backgroundColor = [UIColor greenColor];
    [backButton setTitle:@"BACK" forState:UIControlStateNormal];
    [backButton addTarget:self action:@selector(backParentVC:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:backButton];
}

#pragma mark - event response
- (void)backParentVC:(id)sender
{
//    [self.view setUserInteractionEnabled:NO];
//    UIImageView *showView = (UIImageView *)[self.view viewWithTag:ANIMATE_SHOW_VIEW_TAG];
//    //移除展示动画的UIImageView
//    [UIView animateWithDuration:ORIGIN_ANIMATION_TIME animations:^{
//        
//        showView.x = 0;
//        
//    } completion:^(BOOL finished) {
//        if (finished){
//            [self dismissViewControllerAnimated:NO completion:nil];
//            [UIView animateWithDuration:FRAME_ANIMATION_TIME animations:^{
//                showView.frame = _originRect;
//            } completion:^(BOOL finished) {
//                if (finished) {
//                    [showView removeFromSuperview];
//                    [MAIN_WINDOW setUserInteractionEnabled:YES];
//                }
//            }];
//        }
//    }];
}



- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
 
 
 
*/

@end
