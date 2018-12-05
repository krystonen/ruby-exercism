#Bob answers 'Sure.' if you ask him a question.
#He answers 'Whoa, chill out!' if you yell at him.
#He answers 'Calm down, I know what I'm doing!' if you yell a question at him.
#He says 'Fine. Be that way!' if you address him without actually saying
#anything.
#He answers 'Whatever.' to anything else.

# bob

class Bob
  def self.hey(remark)
    #if string contains letters
    if !remark.scan(/\p{L}/).empty? && remark == remark.upcase
    # if all letters are upper case and it ends with question mark
      if remark.end_with?("?")
        "Calm down, I know what I'm doing!"
        # if all letters are upper case
      else
        "Whoa, chill out!"
      end
    # if string ends with ? and ignores whitespace
    elsif remark.strip.end_with?("?")
      "Sure."
    # if string contains only whitespace
    elsif remark.strip == ""
      "Fine. Be that way!"
    # everything else
    else
      "Whatever."
    end
  end
end

module BookKeeping
  VERSION = 2
end


=begin

"Calm down, I know what I'm doing!"
remark = "WHAT THE HELL WERE YOU THINKING?"


"Whoa, chill out!"
remark = "WATCH OUT!"
remark = "FCECDFCAAB"
remark = "1, 2, 3 GO!"
remark = "ZOMG THE %^*@\#$(*^ ZOMBIES ARE COMING!!11!!1!"
remark = "I HATE YOU"

"Sure."
remark = "Does this cryogenic chamber make me look fat?"
remark = "You are, what, like 15?"
remark = "fffbbcbeab?"
remark = "4?"
remark = ":) ?"
remark = "Wait! Hang on. Are you going to be OK?"
remark = "Okay if like my  spacebar  quite a bit?   "


"Whatever."
remark = "Tom-ay-to, tom-aaaah-to."
remark = "Let's go make out behind the gym!"
remark = "It's OK if you don't want to go to the DMV."
remark = "1, 2, 3"
remark = "Ending with ? means a question."
remark = "\nDoes this cryogenic chamber make me look fat?\nno"
remark = "         hmmmmmmm..."
remark = "This is a statement ending with whitespace      "


"Fine. Be that way!"
remark = ""
remark = "     "
remark = "\t\t\t\t\t\t\t\t\t\t"
remark = "\n\r \t"

=end
