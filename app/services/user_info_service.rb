# class UserInfoService
#   def initialize(token, username)
#     @token = token
#     @username = username
#   end
#
# 
#   def profile_pic(username)
#     uri             = URI("https://api.github.com/users/#{@username}/repos?access_token=#{@token}")
#     response        = Net::HTTP.get(uri)
#     parsed_response = JSON.parse(response, symbolize_names: true)
#     byebug
#   end
#
#
#
#   # def profile_pic(username)
#   #   uri             = URI("https://api.github.com/users/#{username}/subscriptions")
#   #   response        = Net::HTTP.get(uri)
#   #   parsed_response = JSON.parse(response, symbolize_names: true)
#   #   byebug
#   # end
# end
