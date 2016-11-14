class Report < ActiveRecord::Base
	belongs_to :project
	
has_attached_file :document
validates_attachment :document, :content_type => { :content_type => ["application/pdf", "application/zip", "application/x-zip", "application/x-zip-compressed","application/octet-stream"] }
end

