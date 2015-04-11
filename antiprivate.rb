class Class
  def private(*args, &block); public(*args, &block); end
  def protected(*args, &block); public(*args, &block); end
end
