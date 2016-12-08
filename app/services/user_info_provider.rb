# class UserInfoProvider
#   attr_reader :repo_name
#
#   def initialize(attributes = {})
#     @repo_name = attributes[:name]
#   end
#
#   def self.user_info(token, username)
#     service = UserInfoService.new(token, username)
#     byebug
#     UserInfoProvider.new(service.profile_pic)
#   end
#
# end
