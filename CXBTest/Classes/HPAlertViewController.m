//
//  HPAlertViewController.m
//  TestDemos
//
//  Created by 常肖彬 on 2020/3/30.
//  Copyright © 2020 XiaoBinChang. All rights reserved.
//

#import "HPAlertViewController.h"

@interface HPAlertViewController ()

@end

@implementation HPAlertViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    self.view.backgroundColor = [UIColor whiteColor];
    self.title = @"alert";

    UIButton *bt = [UIButton buttonWithType:UIButtonTypeCustom];
    [bt addTarget:self action:@selector(alert1) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:bt];
    bt.frame = CGRectMake(100, 100, 200, 50);
    bt.backgroundColor = [UIColor redColor];
    [bt setTitle:@"alert1" forState:UIControlStateNormal];

}


- (void)alert1 {
    NSString *msg = @"动态图的编码，其实不像解码那样困难。只需要准备好所有的动态图的帧，按照帧的顺序进行一一添加即可。基本步骤可以概括为静态图的步骤1，提供帧数 遍历所有图像帧，重复静态图的步骤静态图的步骤31. 提供帧数，遍历图像帧在进行动态图编码时，创建CGImageDestination的时候需要提供动态图的张数。即在CGImageDestinationCreateWithData的参数中，将count设置为需要编码的总张数。另外，在遍历图像帧的过程，其实只需要不断地按顺序添加就行了，如果需要设置额外元信息，也需要按顺序设置到当前帧上。相对于解码来说简单多了。其他的没有什么大的区别。我们这里还是以GIF为例，简单说明一下。动态图的编码，其实不像解码那样困难。只需要准备好所有的动态图的帧，按照帧的顺序进行一一添加即可。基本步骤可以概括为静态图的步骤1，提供帧数 遍历所有图像帧，重复静态图的步骤静态图的步骤31. 提供帧数，遍历图像帧在进行动态图编码时，创建CGImageDestination的时候需要提供动态图的张数。即在CGImageDestinationCreateWithData的参数中，将count设置为需要编码的总张数。另外，在遍历图像帧的过程，其实只需要不断地按顺序添加就行了，如果需要设置额外元信息，也需要按顺序设置到当前帧上。相对于解码来说简单多了。其他的没有什么大的区别。我们这里还是以GIF为例，简单说明一下。";
    UIAlertController *alert = [UIAlertController alertControllerWithTitle:@"title" message:msg preferredStyle:UIAlertControllerStyleAlert];
    UIAlertAction *action1 = [UIAlertAction actionWithTitle:@"exit" style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action) {
        exit(0);
    }];

    UIAlertAction *action2 = [UIAlertAction actionWithTitle:@"alert2" style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action) {
        [self alert2];
    }];

//    UIAlertAction *action3 = [UIAlertAction actionWithTitle:@"assert" style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action) {
//        assert(0);
//    }];
//
//    UIAlertAction *action4 = [UIAlertAction actionWithTitle:@"crash" style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action) {
//        NSArray *a = @[@1];
//        NSLog(@"%@", a[1]);
//    }];
//
//    [alert addTextFieldWithConfigurationHandler:^(UITextField * _Nonnull textField) {
//
//    }];
//
//    [alert addTextFieldWithConfigurationHandler:^(UITextField * _Nonnull textField) {
//
//    }];

    [alert addAction:action1];
    [alert addAction:action2];
//    [alert addAction:action3];
//    [alert addAction:action4];

    [self.navigationController presentViewController:alert animated:YES completion:nil];
}

- (void)alert2 {
    NSString *msg = @"简单说明一下。";
    UIAlertController *alert = [UIAlertController alertControllerWithTitle:@"title" message:msg preferredStyle:UIAlertControllerStyleAlert];
    UIAlertAction *action1 = [UIAlertAction actionWithTitle:@"exit" style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action) {
        exit(0);
    }];

    UIAlertAction *action2 = [UIAlertAction actionWithTitle:@"abort" style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action) {

    }];

    [alert addAction:action1];
    [alert addAction:action2];

    [self.navigationController presentViewController:alert animated:YES completion:nil];
}
@end
