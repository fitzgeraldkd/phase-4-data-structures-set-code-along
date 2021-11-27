# your code here
class MySet

  def self.[](*args)
    new(args)
  end

  def initialize(enumerable = [])
    @hash = {}
    enumerable.each do |value|
      @hash[value] = true
    end
  end

  def include?(value)
    @hash.has_key?(value)
  end

  def add(value)
    @hash[value] = true
    self
  end

  def delete(value)
    @hash.delete(value)
    self
  end

  def size
    @hash.size
  end

  def clear
    @hash = {}
    self
  end

  def each(&block)
    @hash.each_key(&block)
    self
  end

  def inspect
    "#<MySet: {#{@hash.keys.join(', ')}}>"
  end
end