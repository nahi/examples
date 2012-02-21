require 'benchmark'
require_relative 'red_black_tree'
require_relative 'avl_tree'
require 'openssl'

TIMES = 100000
key_size = 10

keys = []
TIMES.times do
  keys << OpenSSL::Random.random_bytes(key_size)
end

Benchmark.bmbm do |bm|
  h = RedBlackTree.new
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
