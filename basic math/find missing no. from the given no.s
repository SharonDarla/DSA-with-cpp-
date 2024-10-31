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
