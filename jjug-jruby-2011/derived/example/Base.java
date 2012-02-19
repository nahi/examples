package example;

import org.jruby.runtime.builtin.IRubyObject;

public abstract class Base {
    public static void main(String[] args) throws Exception {
        // Use 'Derived' class defined in JRuby.
        Class klass = Class.forName("Derived");
        IRubyObject rObj = (IRubyObject) klass.newInstance();
        // Cast it to Base with 'toJava' method.
        Base jObj = (Base) rObj.toJava(Base.class);
        System.out.println(jObj.hello());
    }

    public abstract String hello();
}
