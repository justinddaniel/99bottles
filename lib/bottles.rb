class Bottles
  def initialize
  end

  def verse(v_number)
    if v_number > 0
      base_verse(v_number)
    elsif v_number == 0
      ending_verse
    end
  end

  def base_verse(v = 99)
    "#{pluralize(v)} of beer on the wall, #{pluralize(v)} of beer.\nTake #{one_or_it(v)} down and pass it around, #{pluralize(v-1)} of beer on the wall.\n"
  end

  def pluralize(v)
    return "#{v} bottles" if v > 1
    return "no more bottles" if v == 0
    "#{v} bottle"
  end

  def ending_verse
    "No more bottles of beer on the wall, no more bottles of beer.\nGo to the store and buy some more, 99 bottles of beer on the wall.\n"
  end

  def one_or_it(v)
    v != 1 ? "one" : "it"
  end

  # got up to this point in half an hour
  def verses(v_start, v_end)
    text = ""
    until v_start < v_end
      text += verse(v_start)
      text += "\n" if v_start > v_end
      v_start -= 1
    end
    text
  end

  def song
    verses(99, 0)
  end

  # all tests passing in 50 minutes
end

# code refactored
#
# class Bottles
#
#   def song
#     verses(99, 0)
#   end
#
#   def verses(v_start, v_end)
#     text = ""
#     until v_start < v_end
#       text += verse(v_start)
#       text += "\n" if v_start > v_end
#       v_start -= 1
#     end
#     text
#   end
#
#   def verse(v_number)
#     if v_number == 0
#       base_verse(v_number)
#     else
#       ending_verse
#     end
#   end
#
#   private
#
#   def base_verse(v = 99)
#     "#{pluralize(v)} of beer on the wall, #{pluralize(v)} of beer.\nTake #{one_or_it(v)} down and pass it around, #{pluralize(v-1)} of beer on the wall.\n"
#   end
#
#   def ending_verse
#     "No more bottles of beer on the wall, no more bottles of beer.\nGo to the store and buy some more, 99 bottles of beer on the wall.\n"
#   end
#
#   def pluralize(v)
#     if v == 6
#       "1 six pack"
#     elsif v == 1
#       "1 bottle"
#     elsif v == 0
#       "no more bottles" if v == 0
#     else
#       "#{v} bottles"
#     end
#   end
#
#   def one_or_it(v)
#     if v == 1
#       "one"
#     else
#       "it"
#     end
#   end
