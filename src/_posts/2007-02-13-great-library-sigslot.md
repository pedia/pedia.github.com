# Great library: sigslot
 2007-02-13 12:48
 c++, RAD, sigslot, pattern


写了一些程序后，发现有很多有价值并且可以重用的库或者 class，使用这些久经考验的代码对 RAD 很有帮助。拿出来和大家分享一下。

- 出处：[http://sigslot.sourceforge.net](http://sigslot.sourceforge.net)
- 用处：实现消息订阅和发送模式。

``` c++ sigslot 示例
struct dog {
  signal1 bark; // 狗叫，需要发送，以便主人处理
  void starvation() {
     bark(100); // 消息产生
  }
};
   
struct human : public has_slots {
   void dog_bark(int vol) {
    // feed it
   }
};
   
int main() {
   dog d;
   human man;
   d.bark.connect(&man, &human::dog_bark); // 绑定
   
   d.starvation();
   
   d.bark.disconnect(&man);
   return 0;
}
```

- 说明：当然 sigslot 的功能比例子远为强大，并且能支持多线程。这个库只有一个.h文件！用起来非常方便。

boost 也有自己的signals库，用法比较类似，优点是能支持返回值，更加强大。
如果说有缺点就是引用了 boost 很多其他的库。