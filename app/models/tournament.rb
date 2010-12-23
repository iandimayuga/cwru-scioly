class Tournament < ActiveRecord::Base
	has_many :teams

	def self.get_current()
		@t = find(:first, :conditions => ["isCurrent = ?", true])
		return @t if not @t.nil?
		nil
	end
end
