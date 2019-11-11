# warm_coat_ui

A new Flutter ui app. based on this design: 
This is a test app. All images come from  [HM.](https://www2.hm.com/zh_cn/index.html)
![coat](./target.png)


ScreenShots:
![1](screenshot1.jpg)
![2](screenshot3.jpg)
![3](screenshot2.jpg)


# Note:
1. 这个APP，关键在于使用Stack, 以及字体修饰，还有Painter

10/30 
1. 使用PageView.builder()，解决了整屏在竖直方向的滚动。
2. 4个小圆点的颜色，需要根据页面的切换来改变,使用ListView.builder(), 
借用同一个_pageController, index == _pageController.page.round()?
3. 


# todo 
1. Painter 这部分我确实是不熟悉。熟悉之后再搞。home_screen, line 86
2. 页面切换的过程中，图片加载居然有点卡顿，里面肯定有问题的。
