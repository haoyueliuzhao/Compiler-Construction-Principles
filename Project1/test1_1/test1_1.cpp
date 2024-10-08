#include <iostream>
#include <cmath>      // 标准库头文件
#include <string>     // 字符串处理
using namespace std;
#define PI 3.14159    // 宏定义
//#define DEBUG         // 条件编译

const int MAX_COUNT = 100; // 常量

// 全局变量
int global_counter = 0;

// 函数定义
inline void printMessage(const string& msg) {
    cout << msg << endl;
}

double calculateArea(double radius) {
    return PI * radius * radius;
}
void helperFunction();  // 函数声明
class Circle {
public:
    Circle(double r) : radius(r) {}
    double area() const 
    { 
        return PI * pow(radius, 2); 
    }
    void display() const 
    {
        cout << "Circle area: " << area() << std::endl;
    }
private:
    double radius;
};

int main() {
    // 局部变量
    string message = "Hello, World!";
    printMessage(message);

    Circle circle1(5.0);
    circle1.display();

    helperFunction();  // 调用新函数

    // 使用全局变量
    global_counter += 1;

#ifdef DEBUG
    cout << "Global counter: " << global_counter << endl;
#endif

    return 0;
}


