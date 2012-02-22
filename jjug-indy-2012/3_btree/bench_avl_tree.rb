require 'benchmark'
require_relative 'avl_tree'
require 'openssl'

TIMES = 20000
key_size = 10

keys = []
TIMES.times do
  keys << OpenSSL::Random.random_bytes(key_size)
end

=begin
Benchmark.bmbm do |bm|
  h = AVLTree.new
  bm.report("aset") do
    keys.each do |k|
      h[k] = 1
    end
  end
  bm.report("aref") do
    keys.each do |k|
      h[k]
    end
  end
  bm.report("delete") do
    keys.each do |k|
      h.delete(k)
    end
  end
end
=end

6.times do
  puts Benchmark.measure {
    h = AVLTree.new
    keys.each do |k|
      h[k] = 1
    end
    keys.each do |k|
      h[k]
    end
    keys.each do |k|
      h.delete(k)
    end
  }
end
