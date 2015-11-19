//
//  HomeCollectionViewController.m
//  CollectionView
//
//  Created by Xiulan Shi on 11/18/15.
//  Copyright © 2015 Xiulan Shi. All rights reserved.
//

#import "HomeCollectionViewController.h"
#import "HomeCollectionViewCell.h"
#import "DetailViewController.h"

#define TEACH_VIEW_TAG 101

@interface HomeCollectionViewController ()

@property NSMutableArray *dataArray;

@end

@implementation HomeCollectionViewController

static NSString * const reuseIdentifier = @"Cell";

- (void)viewDidLoad {
    [super viewDidLoad];
    
    // Uncomment the following line to preserve selection between presentations
    // self.clearsSelectionOnViewWillAppear = NO;
    
    // Register cell classes
   // [self.collectionView registerClass:[UICollectionViewCell class] forCellWithReuseIdentifier:reuseIdentifier];
    
    // Do any additional setup after loading the view.
    self.dataArray = [[NSMutableArray alloc] init];

}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    
    DetailViewController *detailVC = [[DetailViewController alloc] init];
    
    
    // Pass the selected object to the new view controller.
}


#pragma mark <UICollectionViewDataSource>

- (NSInteger)numberOfSectionsInCollectionView:(UICollectionView *)collectionView {
    return 1;
}


- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section {
    return 4;
}

- (UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath {
    HomeCollectionViewCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:reuseIdentifier forIndexPath:indexPath];
    
    // Configure the cell
    
   // cell.labelText.text = [NSString stringWithFormat:@"%li", (long)indexPath.row + 1];
    
    cell.cellImageView.image = [UIImage imageNamed:[NSString stringWithFormat:@"%li", (long)indexPath.row + 1]];
    
                                
    return cell;
}

#pragma mark <UICollectionViewDelegate>

- (void)collectionView:(UICollectionView *)collectionView didSelectItemAtIndexPath:(NSIndexPath *)indexPath
{
    HomeCollectionViewCell *item = [self.collectionView cellForItemAtIndexPath:indexPath];
    [self.collectionView setUserInteractionEnabled:NO];
    
    UIImage *bookImage = self.dataArray[indexPath.row + 1];
    //展示动画的UIImageView
    UIImageView *showView = [[UIImageView alloc] initWithImage:bookImage];
    showView.contentMode = UIViewContentModeScaleAspectFill;
    showView.layer.masksToBounds = YES;
    //坐标系转换
    CGRect _itemPosition = [self.collectionView convertRect:item.frame toView:self.collectionView];
    showView.frame = _itemPosition;
    //设置tag方便以后取出
  //  showView.tag = ANIMATE_SHOW_VIEW_TAG;
    showView.backgroundColor = [UIColor clearColor];
    [self.collectionView addSubview:showView];
    
    
//    
//    DetailViewController *detailVC = [[DetailViewController alloc] init];
//    detailVC.originRect = _itemPosition;
//
//    [UIView animateWithDuration:0.5 animations:^{
//        //将UIImageView放大为全屏
//        showView.frame = [self.collectionView bounds];
//    } completion:^(BOOL finished) {
//        if (finished) {
//            //present 新视图
//            [self presentViewController:detailVC animated:NO completion:nil];
//            //移除展示动画的UIImageView
//            [UIView animateWithDuration:0.5 animations:^{
//                UIImageView *showView = (UIImageView *)[self.collectionView viewWithTag:ANIMATE_SHOW_VIEW_TAG];
//                showView.x = - showView.width;
//                
//            } completion:^(BOOL finished) {
//                if (finished){
//                    [self.collectionView setUserInteractionEnabled:YES];
//                }
//            }];
//        }
//    }];

    
    
}

- (void)collectionView:(UICollectionView *)collectionView didDeselectItemAtIndexPath:(NSIndexPath *)indexPath
{
    
    
}

- (void)collectionView:(UICollectionView *)collectionView didHighlightItemAtIndexPath:(NSIndexPath *)indexPath
{
    
    
}

- (void)collectionView:(UICollectionView *)collectionView didUnhighlightItemAtIndexPath:(NSIndexPath *)indexPath
{
    
    
}



/*
// Uncomment this method to specify if the specified item should be highlighted during tracking
- (BOOL)collectionView:(UICollectionView *)collectionView shouldHighlightItemAtIndexPath:(NSIndexPath *)indexPath {
	return YES;
}
*/

/*
// Uncomment this method to specify if the specified item should be selected
- (BOOL)collectionView:(UICollectionView *)collectionView shouldSelectItemAtIndexPath:(NSIndexPath *)indexPath {
    return YES;
}
*/

/*
// Uncomment these methods to specify if an action menu should be displayed for the specified item, and react to actions performed on the item
- (BOOL)collectionView:(UICollectionView *)collectionView shouldShowMenuForItemAtIndexPath:(NSIndexPath *)indexPath {
	return NO;
}

- (BOOL)collectionView:(UICollectionView *)collectionView canPerformAction:(SEL)action forItemAtIndexPath:(NSIndexPath *)indexPath withSender:(id)sender {
	return NO;
}

- (void)collectionView:(UICollectionView *)collectionView performAction:(SEL)action forItemAtIndexPath:(NSIndexPath *)indexPath withSender:(id)sender {
	
}
*/

@end
