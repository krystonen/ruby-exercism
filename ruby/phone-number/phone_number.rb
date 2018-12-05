# (NXX)-NXX-XXXX
# where N is any digit from 2 through 9 and X is any digit from 0 through 9.
class PhoneNumber
  def self.clean(phone_number)
    clean_number = phone_number.gsub(/\D/, '')
    size = clean_number.length
    regex = /^(\D*[2-9]\d{2}|\D*[1]\D*[2-9]\d{2})\D*[2-9]\d{2}\D*\d{4}\D*$/

    return clean_number if phone_number =~ regex && size == 10
    return clean_number[1..-1] if phone_number =~ regex && size == 11
  end
end
