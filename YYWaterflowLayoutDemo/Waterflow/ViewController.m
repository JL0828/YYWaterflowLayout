//
//  ViewController.m
//  YYCollectionViewWaterflowLayout
//
//  Created by marychen on 16/1/24.
//  Copyright © 2016年 CoderYY. All rights reserved.
//

#import "ViewController.h"
#import "YYShopCell.h"
#import "YYWaterflowLayout.h"

@interface ViewController ()<UICollectionViewDelegate,UICollectionViewDataSource,YYWaterflowLayoutDelegate>
@property (nonatomic, strong) UICollectionView *collectionView;
@property (nonatomic, strong) NSMutableArray *shops;
@end


static NSString *const kCellID = @"YYShopCell";
@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self.view addSubview:self.collectionView];
}

- (NSMutableArray *)shops{
    if (!_shops) {
        _shops = [NSMutableArray array];
        NSArray *shopArray = [YYShop mj_objectArrayWithFilename:@"1.plist"];
        [_shops  addObjectsFromArray:shopArray];
    }
    return _shops;
}

- (UICollectionView *)collectionView{
    if(!_collectionView){
        //setp1:集成YYWaterflowLayout
        YYWaterflowLayout *waterflowLayout = [[YYWaterflowLayout alloc] init];
        waterflowLayout.delegate = self;
        
        _collectionView = [[UICollectionView alloc] initWithFrame:self.view.bounds collectionViewLayout:waterflowLayout];
        _collectionView.dataSource = self;
        _collectionView.delegate = self;
        _collectionView.scrollEnabled = YES;
        [_collectionView registerNib:[UINib nibWithNibName:@"YYShopCell" bundle:nil] forCellWithReuseIdentifier:kCellID];
        
    }
    return _collectionView;
}

- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section{
    return self.shops.count;
}

- (UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath{
    YYShopCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:kCellID forIndexPath:indexPath];
    cell.shop = self.shops[indexPath.row];
    return cell;
}

- (CGFloat)waterflowLayout:(YYWaterflowLayout *)waterflowLayout heightForWidth:(CGFloat)width atIndexPath:(NSIndexPath *)indexPath{
    //setp2: 模型中一定要提供图片的高度、宽度
    YYShop *shop = self.shops[indexPath.row];
    return shop.h / shop.w * width;// //setp3: 按比例返回图片高度
}



@end
