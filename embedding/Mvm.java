import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.BlockingQueue;
import java.util.concurrent.LinkedBlockingQueue;

import org.jruby.Ruby;
import org.jruby.embed.LocalContextScope;
import org.jruby.embed.LocalVariableBehavior;
import org.jruby.embed.ScriptingContainer;
import org.jruby.runtime.builtin.IRubyObject;

public class Mvm {
    public static void main(String[] args) throws Exception {
        final BlockingQueue<IRubyObject> queue = new LinkedBlockingQueue<IRubyObject>();
        
        Thread producerThread = new Thread(new Runnable() {
            public void run() {
                ScriptingContainer producer = new ScriptingContainer(
                        LocalContextScope.SINGLETHREAD, LocalVariableBehavior.PERSISTENT);
                producer.put("queue", queue);
                producer.runScriptlet(
                    "10.times do\n" +
                      "queue.put('hello')\n" +
                      "sleep 0.1\n" +
                    "end\n"
                );
            }
        });
        
        producerThread.start();

        List<Thread> consumerThreads = new ArrayList<Thread>();
        for (int idx = 0; idx < 10; ++idx) {
            final int thIdx = idx;
            Thread consumerThread = new Thread(new Runnable() {
                public void run() {
                    ScriptingContainer consumer = new ScriptingContainer(
                            LocalContextScope.SINGLETHREAD, LocalVariableBehavior.PERSISTENT);
                    consumer.put("idx", new Integer(thIdx));
                    consumer.put("queue", queue);
                    consumer.runScriptlet(
                        "while msg = queue.take\n" +
                          "p [idx, msg]\n" + 
                        "end\n"
                    );
                }
            });
            consumerThread.start();
            consumerThreads.add(consumerThread);
        }
        
        producerThread.join();

        // send stop msg to consumers
        for (int idx = 0; idx < 10; ++idx) {
            queue.put(Ruby.getGlobalRuntime().getNil());
        }
        for (Thread consumerThread : consumerThreads) {
            consumerThread.join();
        }
    }
}
