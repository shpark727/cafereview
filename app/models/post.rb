class Post < ActiveRecord::Base
	belongs_to :user
	has_many :comments
	validates :category, :inclusion=>{:in => ["Franchise","Handdrip","Variation","Specialty","디저트"], :message =>"Franchise, Handdrip,Variation,Specialty,디저트 중 하나를 선택하셔야합니다."}
	validates :title, :presence =>{ :message =>"제목을 반드시 입력하세요."}
	mount_uploader :image, ImageUploader
	
end
