# 26/9
# Mọi thứ trong ruby đều là object ngoại trừ block.
# Block co the chi dinh thanh Proc
# Block được truyền vào phương thức ở vị trí giống như là một tham số cuối cho phương thức 

# def square(a, &b)
#   puts a
#   puts a.class
#   puts b
#   puts b.class
# end
# square([1,2,3]) { |x| puts x }

# def sum
#   yield 3
# end
# sum { |i,j| puts "this is #{i+j}" }

# Proc là đối tượng đại diện cho block

# p = Proc.new {|x| puts x*2}
# [1,2,3].each(&p)
# puts p
# puts p.class

# proc = Proc.new do
#   puts 'Hoang toni'
# end
# proc.call

# def square(a,p)
#   # puts a
#   # puts a.class
#   # puts p
#   # puts p.class
#   a.each do |x|
#     p.call x*x
#   end
# end
# proc = Proc.new {|x| puts x}
# square([1,2,3], proc)

# Proc chính là block được đặt tên


# Lambda
# Lambda la ham nặc danh - la function dc goi tu bên trong function - global function
# Lambda cũng là Proc object, Lambda là một special Proc object

# lambda_jobect = -> { puts 'Lambda jobect ne' }
# lambda_jobect.call
# lambda_jobect.()
# lambda_jobect[]
# lambda_jobect.===

# lambda_param = -> (x) { puts x*x }
# lambda_param.call(5)
# lambda_param.(5)
# lambda_param[5]
# lambda_param.=== 5

# Procs và Lambdas đều là closure trong ruby.
# Là những phương pháp nhóm gộp các mã ruby lại để thực thi.
# Blocks không phải đối tượng, còn Procs và Lambdas thì có.
# Procs có hành vi giống với block còn Lambdas thì giống phương thức.

# Procs là đối tượng còn Blocks thì không.
# Muốn call 1 block thi k thể gọi thẳng đc, phải khởi tại Proc mới call block đó đc

# *Không giống Procs thông thường, nếu truyền sai các tham số khi gọi lambda,  sẽ sinh ra ngoại lệ , trong khi đó việc gọi một proc mà không truyền tham số thì mặc định tham số đó là `nil`:*

# Proc vs Labda
# 1. xu ly param
# proc --> truyền sai param --> sinh ra nil
# lambda --> truyền sai param --> sinh ra exception

# 2. cach tra ve return
# Proc chỉ trả về cho ngữ cảnh hiện tại. --> no chi dc .call trong 1 context (method)
# Lambda sẽ trả về giá trị của bản thân nó --> tinh chat cua method --> .call ở đâu cũng đc


# khai niem block, proc, lambda
# phan biet 3 cai nay và su khac nhau cua chung
# khi nào thi en using proc, lambda

# def square(a, &b)
#   puts a
#   puts a.class
#   puts b
#   puts b.class
# end
# square([1,2,3]) { |x| puts x }

# p = Proc.new {puts 'proc ne'}
# l = -> {puts 'lambda ne'}

# p = Proc.new {return 1}
# puts "proc: #{p.call}"

# l = -> {return 1}
# puts "lambda: #{l.call}"


def call_proc
  puts 'before'
  # my_proc = Proc.new {return 2}
  # my_proc.call
  my_lambda = -> {return 2}
  puts "#{my_lambda.call}"
  puts 'after '
end

puts call_proc












