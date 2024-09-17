#include <iostream>
#include <vector>
#include <algorithm>
#include <numeric>
#include <cmath>

#define USE_RECURSION

const int N = 1000000;

// �ݹ����׳�
#ifdef USE_RECURSION
long long factorial(int n) {
    if (n <= 1) return 1;
    return n * factorial(n - 1);
}
#else
// ʹ��ѭ������׳�
long long factorial(int n) {
    long long result = 1;
    for (int i = 2; i <= n; ++i) {
        result *= i;
    }
    return result;
}
#endif

// ����ƽ����
double sum_of_squares(const std::vector<double>& v) {
    return std::accumulate(v.begin(), v.end(), 0.0, [](double sum, double x) {
        return sum + x * x;
        });
}

// ���������е����ֵ
double max_element(const std::vector<double>& v) {
    return *std::max_element(v.begin(), v.end());
}

// ��������ľ�ֵ
double mean(const std::vector<double>& v) {
    return std::accumulate(v.begin(), v.end(), 0.0) / v.size();
}

int main() {
    std::vector<double> data(N);

    // ��ʼ������
    std::iota(data.begin(), data.end(), 1.0);

    // �������ݵ�ƽ����
    double sum_squares = sum_of_squares(data);
    std::cout << "Sum of squares: " << sum_squares << std::endl;

    // �������ֵ
    double max_val = max_element(data);
    std::cout << "Max element: " << max_val << std::endl;

    // �����ֵ
    double avg = mean(data);
    std::cout << "Mean: " << avg << std::endl;

    // ����׳ˣ�ʹ�õݹ��ѭ����ȡ�����������룩
    int factorial_value = 20;
    std::cout << "Factorial of " << factorial_value << ": " << factorial(factorial_value) << std::endl;

    return 0;
}
