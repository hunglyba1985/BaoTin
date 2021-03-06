//
//  CollectionViewCell.h
//  SpecialMagazine
//
//  Created by Macbook Pro on 10/25/16.
//  Copyright © 2016 Macbook Pro. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "CellCollectionView.h"
#import "DGActivityIndicatorView.h"

@protocol CollectionViewCellDelegate <NSObject>

-(void) selectedArticleWithInformation:(ArticleRealm*) artistInfo;


@end


@interface CollectionViewCell : UICollectionViewCell <UICollectionViewDelegate,UICollectionViewDataSource>
{
    NSMutableArray *collectionData;
    DGActivityIndicatorView *activityIndicatorView;
    
    
}

@property (weak, nonatomic) IBOutlet UILabel *lable;

@property (weak, nonatomic) IBOutlet UICollectionView *collectionView;



-(void) loadingDataForCatalog:(NSDictionary *) catagoryInfo;
-(void) getDataLocal;



@property (nonatomic,strong) NSDictionary *cellCatagoryInfo;



@property(nonatomic,weak) id<CollectionViewCellDelegate> delegate;



@end
