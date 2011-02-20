require 'java'
java_import 'org.jruby.embed.ScriptingContainer'
java_import 'org.jruby.embed.LocalContextScope'
java_import 'org.jruby.embed.LocalVariableBehavior'

require 'thread'

producer = ScriptingContainer.new(LocalContextScope::SINGLETHREAD, LocalVariableBehavior::PERSISTENT)
queue = Queue.new

producer.put('queue', queue)

producer_thread = Thread.new {
  producer.run_scriptlet(<<-END)
    10.times do
      queue.push('hello')
      sleep 0.1
    end
  END
}

consumer_threads = 10.times.to_enum.map { |idx|
  Thread.new {
    consumer = ScriptingContainer.new(LocalContextScope::SINGLETHREAD, LocalVariableBehavior::PERSISTENT)
    consumer.put('idx', idx)
    consumer.put('queue', queue)
    consumer.run_scriptlet(<<-END)
      while msg = queue.pop
        p [idx, msg]
      end
    END
  }
}

producer_thread.join

# send stop msg to consumers
10.times do
  queue.push(nil)
end

consumer_threads.each(&:join)
