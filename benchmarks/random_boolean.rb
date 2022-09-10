#!/usr/bin/env ruby
require "benchmark/ips"

n = 100_000
Benchmark.ips do |x|
  x.report("[true, false].sample") { [true, false].sample }
  x.report("[0, 1].sample == 1") { [0, 1].sample == 1 }
  x.report("rand(2) == 1") { rand(2) == 1 }
  x.report("rand < 0.5") { rand < 0.5 }
  x.compare!
end
