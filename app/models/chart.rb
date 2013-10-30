class UrlValidator < ActiveModel::EachValidator
  def validate_each(record, attribute, value)
    begin
      uri = URI.parse(value)
      resp = uri.kind_of?(URI::HTTP)
    rescue URI::InvalidURIError
      resp = false
    end
    unless resp == true
      record.errors[attribute] << (options[:message] || "is not an url")
    end
  end
end

class Chart < ActiveRecord::Base
  attr_accessible :calendar_url, :data_url, :owner_email, :owner_name, :title

  validates :calendar_url, :owner_name, :owner_email, :title, presense: true
  validates :calendar_url, :data_url, url: true

end
