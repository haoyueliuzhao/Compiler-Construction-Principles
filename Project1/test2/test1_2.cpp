#include <iostream>
#include <vector>
#include <algorithm>
#include <numeric>
#include <cmath>

#define USE_RECURSION

const int N = 1000000;

// 递归计算阶乘
#ifdef USE_RECURSION
long long factorial(int n) {
    if (n <= 1) return 1;
    return n * factorial(n - 1);
}
#else
// 使用循环计算阶乘
long long factorial(int n) {
    long long result = 1;
    for (int i = 2; i <= n; ++i) {
        result *= i;
    }
    return result;
}
#endif

// 计算平方和
double sum_of_squares(const std::vector<double>& v) {
    return std::accumulate(v.begin(), v.end(), 0.0, [](double sum, double x) {
        return sum + x * x;
        });
}

// 计算向量中的最大值
double max_element(const std::vector<double>& v) {
    return *std::max_element(v.begin(), v.end());
}

// 计算数组的均值
double mean(const std::vector<double>& v) {
    return std::accumulate(v.begin(), v.end(), 0.0) / v.size();
}

int main() {
    std::vector<double> data(N);

    // 初始化数据
    std::iota(data.begin(), data.end(), 1.0);

    // 计算数据的平方和
    double sum_squares = sum_of_squares(data);
    std::cout << "Sum of squares: " << sum_squares << std::endl;

    // 计算最大值
    double max_val = max_element(data);
    std::cout << "Max element: " << max_val << std::endl;

    // 计算均值
    double avg = mean(data);
    std::cout << "Mean: " << avg << std::endl;

    // 计算阶乘（使用递归或循环，取决于条件编译）
    int factorial_value = 20;
    std::cout << "Factorial of " << factorial_value << ": " << factorial(factorial_value) << std::endl;

    return 0;
}
