#include <iostream>
#include <cmath>      // ��׼��ͷ�ļ�
#include <string>     // �ַ�������
using namespace std;
#define PI 3.14159    // �궨��
#define DEBUG         // ��������

const int MAX_COUNT = 100; // ����

// ȫ�ֱ���
int global_counter = 0;

// ��������
void printMessage(const string& msg) {
    cout << msg << endl;
}

double calculateArea(double radius) {
    return PI * radius * radius;
}

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
    // �ֲ�����
    string message = "Hello, World!";
    printMessage(message);

    Circle circle1(5.0);
    circle1.display();

    // ʹ��ȫ�ֱ���
    global_counter += 1;

#ifdef DEBUG
    cout << "Global counter: " << global_counter << endl;
#endif

    return 0;
}


