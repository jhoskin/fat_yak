# == Schema Information
# Schema version: 20110125234650
#
# Table name: users
#
#  id                 :integer         not null, primary key
#  name               :string(255)
#  email              :string(255)
#  created_at         :datetime
#  updated_at         :datetime
#  encrypted_password :string(255)
#  salt               :string(255)
#

class User < ActiveRecord::Base
	email_regex = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i

	attr_accessor :password
	attr_accessible :name, :email, :password

	validates :name,		:presence => true
	validates :email,		:presence => true,
							:format => {:with => email_regex}
	validates :password,	:presence => true,
							:confirmation => true
						
	before_save :hash_password

	def password_verified?(submitted_password)
		encrypted_password == hash(submitted_password)
	end

	def self.authenticate(name, submitted_password)
		user = find_by_name(name)
		return nil if user.nil?
		return user if user.password_verified?(submitted_password)
	end


#	private
	
	def hash_password
		self.salt = make_salt if new_record?
		self.encrypted_password = hash(password)
	end 
	
	def make_salt
		secure_hash("#{Time.now.utc}--#{password}")
	end

	def hash(string)
		secure_hash("#{salt}--#{string}")
	end
	
	def secure_hash(string)
		Digest::SHA2.hexdigest(string)
	end

end
