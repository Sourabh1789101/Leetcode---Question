class Solution {
    public int[] findArray(int[] pref) {
        int num = pref.length;
        int [] arr = new int[num];
        arr[0] = pref[0];
        for(int itr = 1; itr < num;itr++)
        {
            int a = pref[itr] ^ pref[itr-1];
            arr[itr] = a;
        }
        return arr;
    }
}