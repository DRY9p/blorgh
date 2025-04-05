module Blorgh
  class Article < ApplicationRecord
    attr_accessor :author_name
    has_many :comments
    belongs_to :author, class_name: Blorg.author_class

    before_validation :set_author

    private
      def set_author
        self.author = User.find_or_create_by(name: author_name)
        self.author = Blorgh.author_class.find_or_create_by(name: author_name)
      end

      def self.author_class
        @@author_class.constantize
      end
  end
end
