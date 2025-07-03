class Solution {
    public int hammingWeight(int n) {
        int Count=0;
        while(n!=0){
            Count++;
            n&=n-1;
        }
        return Count;
    }
}