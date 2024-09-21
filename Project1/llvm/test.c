const float p = 3.0;
int a = 12, b = 11;
int array1[4] = {1, 2, 3, 4};

void putint(int);
int getint();
void putch(int);
int f(int t) {
    int temp = 0;
    for (int i = 0; i < 4; i++) {
        temp += array1[i];
    }
    return t * temp+p;
}

int main() {
    int x=getint() ;
    if (a > 0 || (b = b + 1)) {  
        x = x + 1;
    }
    putint(b);  
    putch(10); 
    putint(x);
    putch(10);
    putint(f(x));
    putch(10);
    return 0;
}
