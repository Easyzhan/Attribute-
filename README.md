# Attribute-
字符串某个位置变色,变字体等
等下编辑
![image](https://github.com/Easyzhan/Attribute-/blob/master/Simulator%20Screen%20Shot%202016年8月3日%2017.16.17.png)

##关于使用
    拖拽两只不同的文件,对就是那两只Helper到项目中去
    import之,#import "VVAttrHeper.h"
    举个例子之
    UILabel *alinLabel = [[UILabel alloc] init];
    alinLabel.frame = CGRectMake(0, 200, self.view.frame.size.width, 40);
    alinLabel.textAlignment = NSTextAlignmentCenter;
    [self.view addSubview:alinLabel];
    alinLabel.attributedText = [VVAttrHeper vv_changeSpaceWithTotalString:str2 Space:10];
    注意事项之:
    要用的属性是attributedText,别用.text
    好了去嗨之
