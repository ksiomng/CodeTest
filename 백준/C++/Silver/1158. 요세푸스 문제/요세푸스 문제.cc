#include <iostream>
#include <queue>
#include <vector>
using namespace std;

int main()
{
	int n, k;
	cin >> n >> k;
	deque<int> q;
	deque<int> result;

	for (int i = 1; i <= n; i++) {
		q.push_back(i);
	}

	for (int i = 0; i < n; i++){
		for (int j = 0; j< k-1; j++){
			int a = q.front();
			q.push_back(a);
			q.pop_front();
		}
		result.push_back(q.front());
		q.pop_front();
	}

	cout << "<";
	for (int i = 0; i < n-1; i++) {
		cout << result.front() << ", ";
		result.pop_front();
	}
	cout << result.front() << ">";
}
