require 'benchmark'

def get_from_case(id)
  case id
    when 1
      "one thing"
    when 3
      "other thing"
    else
      "default thing"
  end
end

NAMES = {
  1 => "one thing",
  3 => "other thing",
}
NAMES.default = "default thing"

def get_from_hash(arg)
  NAMES[arg]
end

n = 1000000
Benchmark.bm do |test|
  test.report("case  1") { n.times do; get_from_case(1); end }
  test.report("hash  1") { n.times do; get_from_hash(1); end}
  test.report("case 42") { n.times do; get_from_case(42); end }
  test.report("hash 42") { n.times do; get_from_hash(42); end}
  test.report("case 500000") { n.times do; get_from_case(500000); end }
  test.report("hash 500000") { n.times do; get_from_hash(500000); end}
  test.report("case 1000000") { n.times do; get_from_case(1000000); end }
  test.report("hash 1000000") { n.times do; get_from_hash(1000000); end}
  test.report("case 10000000") { n.times do; get_from_case(10000000); end }
  test.report("hash 10000000") { n.times do; get_from_hash(10000000); end}
end