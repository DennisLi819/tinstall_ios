//
//  MainVC.m
//  TinstallDemo
//
//  Created by fx on 2021/1/8.
//

#import "MainVC.h"
#import <TInstallSDK/TInstallSDK.h>

@interface MainVC ()

@property (weak, nonatomic) IBOutlet UILabel *contentLab;

@end

@implementation MainVC

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
}

- (IBAction)getParameter:(UIButton *)sender {
    self.contentLab.text = @"";
    [TInstall getWithInstallResult:^(NSDictionary * _Nullable data) {
        NSLog(@"%@",data);
        if (data) {
            NSArray *dicArr = data.allKeys;
            if (dicArr.count > 0) {
                self.contentLab.text = [NSString stringWithFormat:@"id:%@",[data valueForKey:@"id"]];
            } else {
                self.contentLab.text = @"获取失败";
            }
        }
    }];
}

@end
