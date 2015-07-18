class User < ActiveRecord::Base
  has_many :roles
  has_many :offices

  # attr_accessor :name, :username, :email

  # def self.search(search)
  #  if search
  #    where ('username LIKE ?' "%#{search}%")
  #  else
  #    scoped
  #  end
  # end

  def is_admin?
  end

  # reporting capabilities
  def self.to_csv(options = {})
    CSV.generate(options) do |csv|
      csv << column_names
      all.each do |user|
        csv << user.attributes.values_at(*column_names)
      end
    end
  end

  def self.import(file)
    
  end
end
