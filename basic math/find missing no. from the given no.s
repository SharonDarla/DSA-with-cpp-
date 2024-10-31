//approach using sum of first n natural no.s formula
#include <bits/stdc++.h>
using namespace std;

int main() {
      
      int n; 
    	cout<<"enter size:";
    	cin>>n;
    	int arr[n];
    	cout<<"enter array no.s: \n";
    	for(int i=0;i<n;i++){
    	    cin>>arr[i];
    	}
    	int arrSum=0;
    	for(int i=0;i<n;i++){
    	    arrSum+=arr[i];
    	}
    	n=n+1;
        int expSum=n*(n+1)/2;
        int num = expSum - arrSum;
	    cout<<"missing no: "<<num<<endl;
	return 0;
}
---------------------------------------------------------------------------------------------------------------

//using Bitwise approach- using XOR

Another efficient approach is to use the XOR operation. The approach is based on the idea that XOR of a number with itself is 0, and XOR of a number with 0 is the number itself. This means that if we find XOR of first N natural numbers and then take XOR of each array elements with this, then the resultant will be the missing number.


Using these properties, the approach can be understood as::

First find XOR all numbers in the range [1, N]
Then XOR all elements of the array with the XOR(1, N).
The result will be the missing number.

#include <bits/stdc++.h>
using namespace std;

// Function to get the missing number
int missingNumber(int n, vector<int>& arr)
{
    int xor1 = 0, xor2 = 0;

    // XOR all array elements
    for (int i = 0; i < n - 1; i++) {
        xor2 ^= arr[i];
    }

    // XOR all numbers from 1 to n
    for (int i = 1; i <= n; i++) {
        xor1 ^= i;
    }

    // Missing number is the XOR of xor1 and xor2
    return xor1 ^ xor2;
}

// Driver Code
int main()
{
    vector<int> arr = { 1, 2, 3, 5 };
    int n = 5;

    // Function call
    int miss = missingNumber(n, arr);
    cout << miss;
    return 0;
}



