HRProgressView
==============

a custom progress view as an circle.

一个自定义的进度条控键,当进度不断加载的时候圆环不断的填充完整，非常简单的代码,基于ARC的工程。

使用方法：

    HRProgressView *progressView = [[HRProgressView alloc] initWithFrame:CGRectMake(50, 50, 100, 100)];
    progressView.progress = 0.8;
    [self.view addSubview:progressView];
