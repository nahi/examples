public class Target {
    double addAllSqrts(int max) {
	double accum = 0;
	for (int i = 0; i < max; i++) {
	    accum = addSqrt(accum, i);
	}
	return accum;
    }

    double addSqrt(double a, int b) {
	return a + Math.sqrt(b);
    }

    public static void main(String[] args) {
	for (int i = 0; i < 100000; ++i) {
	    (new Target()).addAllSqrts(10);
	}
    }
}
