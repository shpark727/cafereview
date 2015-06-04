class User < ActiveRecord::Base
	has_many :posts
	has_many :comments
	validates :username, :presence=>{:message =>"아이디를 반드시 입력해야되"}
	validates :username, :uniqueness =>{:message =>"이미 존재하는 아이디"}
	validates :password, :length =>{:minimum =>6, :too_short =>"최소 6자이상비번을 입력하시오"}
end
