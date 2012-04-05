public class Command {
  void processOptions(String[] options) {
    boolean result;
    for (String opt : options) {
      result = process(opt.concat("?!"));
    }
  }
  boolean process(String opt) { ... }

  void run() {
    String[] options = { "yes", "no", "maybe" };
    processOptions(options);
  }

  public static void main(String[] args) {
    (new Main()).run();
  }
}
