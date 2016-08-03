//
//  ViewController.m
//  AttributeString(富文本)
//
//  Created by Vizard on 16/8/2.
//  Copyright © 2016年 Vizard. All rights reserved.
//

#import "ViewController.h"
#import "VVAttrHeper.h"

@interface ViewController ()


/** attrubiteStirng */
@property(nonatomic, copy) NSMutableAttributedString *string;

@property (weak, nonatomic) IBOutlet UILabel *attributeString;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    NSString *str2 = @"L0000001";
    NSString *total1 = @"赵云(L0000001 - 总办)";
    NSArray *subArray1 = @[str2];
    
    
   self.attributeString.attributedText = [VVAttrHeper vv_changeFontAndColor:[UIFont fontWithName:@"Helvetica" size:40] Color:[UIColor blueColor] TotalString:total1 SubStringArray:subArray1];
    
    UILabel *colorLabel = [[UILabel alloc] init];
    colorLabel.frame = CGRectMake(0, 140, self.view.frame.size.width, 40);
    colorLabel.textAlignment = NSTextAlignmentCenter;
    [self.view addSubview:colorLabel];
    colorLabel.attributedText = [VVAttrHeper vv_changeCorlorWithColor:[UIColor redColor] TotalString:total1 SubStringArray:subArray1];
    
    UILabel *alinLabel = [[UILabel alloc] init];
    alinLabel.frame = CGRectMake(0, 200, self.view.frame.size.width, 40);
    alinLabel.textAlignment = NSTextAlignmentCenter;
    [self.view addSubview:alinLabel];
   alinLabel.attributedText = [VVAttrHeper vv_changeSpaceWithTotalString:str2 Space:10];
}


@end
