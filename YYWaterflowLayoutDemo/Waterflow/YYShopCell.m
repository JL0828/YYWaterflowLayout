//
//  YYShopCell.m
//  YYCollectionViewWaterflowLayout
//
//  Created by marychen on 16/1/24.
//  Copyright © 2016年 CoderYY. All rights reserved.
//

#import "YYShopCell.h"
#import "YYShop.h"
#import "UIImageView+WebCache.h"

@interface YYShopCell()
@property (weak, nonatomic) IBOutlet UIImageView *imageView;
@property (weak, nonatomic) IBOutlet UILabel *priceLabel;

@end

@implementation YYShopCell

- (void)awakeFromNib {
    // Initialization code
}

- (void)setShop:(YYShop *)shop{
    _shop = shop;
    
    [self.imageView sd_setImageWithURL:[NSURL URLWithString:shop.img] placeholderImage:[UIImage imageNamed:@"loading"]];
    self.priceLabel.text = shop.price;
}

@end
