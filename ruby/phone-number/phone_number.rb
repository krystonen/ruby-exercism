# (NXX)-NXX-XXXX
# where N is any digit from 2 through 9 and X is any digit from 0 through 9.
class PhoneNumber
  def self.clean(phone_number)
    regex = /^(?:\D*1?)(?:\D*)([2-9]\d{2}) # (NXX)
            (?:\D*)([2-9]\d{2}) # NXX
            (?:\D*)(\d{4})(?:\D*)$/x # XXXX
    r = regex.match(phone_number)
    r.captures.join unless r.nil?
  end
end
