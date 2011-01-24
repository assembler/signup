class StrongPasswordValidator < ActiveModel::EachValidator
  def validate_each(record, attribute, value)
    unless value =~ /[A-Z]/ and value =~ /[a-z]/ and value =~ /[0-9]/
      record.errors[attribute] << 'is too weak'
    end
  end
end