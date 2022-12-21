void setup() {
  int n = 11;
  int[] a = new int[n];
  
  for(int i = 0; i < n; i++) {
    a[i] = int(random(-100, 100));
  }
  
  int[] x = bogoSort(a);
  printArray(x);
}



int[] bogoSort(int[] a) {
  while( !isSorted(a) ) {
    for(int i = 0; i < a.length; i++) {
      int index = int(random(0, a.length-1));
      int x = a[i];
      a[i] = a[index];
      a[index] = x;
    }
  }
  
  return a;
}

boolean isSorted(int[] a) {
  for(int i = 0; i < a.length-1; i++) {
    if(a[i] > a[i+1]) {
      return false;
    }   
  }
  
  return true;
}
