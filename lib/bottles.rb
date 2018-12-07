class Bottles
  def verse(num_of_bottles)
    <<~VERSE
      #{first_part(num_of_bottles)}, #{second_part(num_of_bottles)}
      #{third_part(num_of_bottles)}, #{fourth_part(num_of_bottles)}
    VERSE
  end

  def verses(first_verse_bottles, second_verse_bottles)
    "#{verse(first_verse_bottles)}\n#{verse(second_verse_bottles)}"
  end

  private

  def first_part(num_of_bottles)
    if num_of_bottles == 0
      "No more bottles of beer on the wall"
    else
      "#{num_of_bottles} #{bottle_or_bottles(num_of_bottles)} of beer on the wall"
    end
  end

  def second_part(num_of_bottles)
    if num_of_bottles == 0
      "no more bottles of beer."
    else
      "#{num_of_bottles} #{bottle_or_bottles(num_of_bottles)} of beer."
    end
  end

  def third_part(num_of_bottles)
    if num_of_bottles == 0
      "Go to the store and buy some more"
    else
      "Take #{num_of_bottles == 1 ? 'it' : 'one'} down and pass it around"
    end
  end

  def fourth_part(num_of_bottles)
    if num_of_bottles == 1
      "no more bottles of beer on the wall."
    elsif num_of_bottles == 0
      '99 bottles of beer on the wall.'
    else
      "#{num_of_bottles - 1} #{num_of_bottles - 1 == 1 ? 'bottle' : 'bottles' } of beer on the wall."
    end
  end

  def bottle_or_bottles(num_of_bottles)
    num_of_bottles == 1 ? 'bottle' : 'bottles'
  end
end