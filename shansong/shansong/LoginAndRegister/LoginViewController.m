//
//  LoginViewController.m
//  shansong
//
//  Created by 郭冀龙 on 16/11/22.
//  Copyright © 2016年 ishansong. All rights reserved.
//

#import "LoginViewController.h"

@interface LoginViewController ()

@end

@implementation LoginViewController

- (void)viewDidLoad {
    
   [super viewDidLoad];
    

    [self initView];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


- (void)initView{
    printf("login view init");
    
    UIView *loginView= [[UIView alloc] initWithFrame:CGRectMake(15, 15, kDeviceWidth, kTableViewCellRowHeight*2+1)];
    loginView.backgroundColor = [UIColor whiteColor];
    loginView.layer.masksToBounds = YES;
    loginView.layer.cornerRadius = 5;
    
    [self.view addSubview:loginView];
    
    //手机号
    self.phoneNumberTextField = [[UITextField alloc]initWithFrame:CGRectMake(0, 0, loginView.bounds.size.width, kTableViewCellRowHeight)];
    self.phoneNumberTextField.borderStyle = UITextBorderStyleNone;
    UIView *leftPhoneNumber = [[UIView alloc]initWithFrame:CGRectMake(0, 0, 38, 24)];
//    UIImageView *phoneNumberView = [[UIImageView alloc]initWithFrame:CGRectMake(7, 0, 24, 24)];
//    phoneNumberView.image = [[SSImageCache sharedInstance]imageNamed:@"login_head_icon"];
//    [leftPhoneNumber addSubview:phoneNumberView];
    self.phoneNumberTextField.leftView = leftPhoneNumber;
    self.phoneNumberTextField.leftViewMode = UITextFieldViewModeAlways;
    self.phoneNumberTextField.placeholder = @"请输入手机号";
    self.phoneNumberTextField.font =[UIFont systemFontOfSize:14];
    self.phoneNumberTextField.keyboardType = UIKeyboardTypeNumberPad;
    [loginView addSubview:self.phoneNumberTextField];
    
    UILabel *cuttingLine = [[UILabel alloc]initWithFrame:CGRectMake(0, self.phoneNumberTextField.bounds.size.width, loginView.bounds.size.width, 1)];
    cuttingLine.backgroundColor = [UIColor whiteColor];
    [loginView addSubview:cuttingLine];
    
    //请输入密码
    self.pwdTextField = [[UITextField alloc]initWithFrame:CGRectMake(0, cuttingLine.bounds.size.width, loginView.bounds.size.width, kTableViewCellRowHeight)];
    self.pwdTextField.borderStyle = UITextBorderStyleNone;
    UIView *leftPwdView = [[UIView alloc]initWithFrame:CGRectMake(0, 0, 38, 24)];
//    UIImageView *pwdView = [[UIImageView alloc]initWithFrame:CGRectMake(7, 0, 24, 24)];
//    pwdView.image = [[SSImageCache sharedInstance]imageNamed:@"login_password_icon"];
//    [leftPwdView addSubview:pwdView];
    self.pwdTextField.leftView = leftPwdView;
    self.pwdTextField.leftViewMode = UITextFieldViewModeAlways;
    self.pwdTextField.font = kCellTextFont;
    self.pwdTextField.secureTextEntry = YES;
    self.pwdTextField.delegate = self;
    self.pwdTextField.returnKeyType = UIReturnKeyDone;
    self.pwdTextField.placeholder = @"请输入密码";
    
    [loginView addSubview:self.pwdTextField];

    
}

@end
