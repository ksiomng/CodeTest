#include <iostream>
using namespace std;

int n, x;
int a;
int arr[10001];

int main() {

	cin >> n >> x;
	int num;

	for (int i = 0; i < n; i++) {

		cin >> num;
		if (num < x) {
			arr[a] = num;
			a++;
		}
	}

	for (int i = 0; i < a; i++) {
		cout << arr[i] << " ";
	}
	return 0;
}
