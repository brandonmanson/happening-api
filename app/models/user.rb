class User < ApplicationRecord
  has_secure_password

  def self.from_token_payload(payload)
    p "payload: #{payload}"
    p 'in from_token_payload'
    begin
      p 'inside begin block'
      p "#{self.find_by(email: payload['email'])}"
      if self.find_by(email: payload['email']) == nil
        'find returned nil'
        self.create!(payload['email'])
      end
    rescue
      raise ActiveRecord::NoRecordError
    end
  end

end
