- 代码直接跳转

```
LoginViewController *login=[[LoginViewController alloc] init];

[self presentViewController:login animated:NO completion:nil];  

```

直接跳转不能在```viewDidAppear```之前直接使用