class Post < ActiveRecord::Base
	belongs_to :user
	has_many :comments
	validates :category, :inclusion=>{:in => ["한식","일식","중식","양식","디저트"], :message =>"한식일식중식양식디저트 중 하나를 선택하셔야합니다."}
	validates :title, :presence =>{ :message =>"제목을 반드시 입력하세요."}
	mount_uploader :image, ImageUploader
	
end
