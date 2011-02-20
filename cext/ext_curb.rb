require 'rubygems'
require 'curl'
require 'httpclient'
require 'benchmark'

times = ARGV.shift.to_i
url = ARGV.shift

Benchmark.bmbm do |bm|
  bm.report('curb') do
    times.times do
      Curl::Easy.http_get(url).body_str.size
    end
  end

  bm.report('httpclient') do
    c = HTTPClient.new
    times.times do
      c.get_content(url).size
    end
  end
end
