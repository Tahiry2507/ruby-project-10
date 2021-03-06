# 2. Use a regular expression to get the last number in the following URL’s:
#   http://www.google.com/a/5    #should return 5
#   http://www.yahoo.com/a/19   #should return 19

link1 = "http://www.google.com/a/5"
link2 = "http://www.yahoo.com/a/19"

link1.scan(/\d/) do |x|
  puts x
end

link2.scan(/\d\d/) do |x|
  puts x
end

# 3. Use a regular expression to get the price from the following string
# <div class=”price”>Price: $10</div>  #should return 10 (not $10)
# <div class=”price”>Price: $25</div> #should return 25 (not $25)

string1 = "<div class=”price”>Price: $10</div>"
string2 = "<div class=”price”>Price: $25</div>"

string1.scan(/\d\d/) do |x|
  puts x
end

string2.scan(/\d\d/) do |x|
  puts x
end

# 4. Use a regular expressions to get all the email addresses in the following String

# <html>
#   <body>
#     Hello my name is Steve, my email address is steve@capshare. I used to have an email address that was steve@hotmail.com but it was also taken. Sometime I try to fool people by typing it out like this: steve at gmail.com
#   </body>
# </html>

string3 = "<html>
  <body>
    Hello my name is Steve, my email address is steve@capshare. I used to have an email address that was steve@hotmail.com but it was also taken. Sometime I try to fool people by typing it out like this: steve at gmail.com
  </body>
</html>"

a = []

string3.scan (/[a-z]+\s+at+\s+[a-z]+.com/) do |x|
  a << x.sub( " at ", "@")
end

string3.scan (/[a-z]+@+[a-z]+.[a-z]+/) do |x|
  if x.to_s.include? ".com"
    a << x
  else 
    a << x + ".com"
  end
end

puts a

# Time spent : 11 hours
