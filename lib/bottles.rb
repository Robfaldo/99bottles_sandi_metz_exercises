class Bottles
  def verse(num_of_bottles)
    <<~VERSE
      #{num_of_bottles} #{bottle_or_bottles(num_of_bottles)} of beer on the wall, #{num_of_bottles} #{bottle_or_bottles(num_of_bottles)} of beer.
      Take #{num_of_bottles == 1 ? 'it' : 'one'} down and pass it around, #{end_of_verse(num_of_bottles)}
    VERSE
  end

  private

  def end_of_verse(num_of_bottles)
    if num_of_bottles == 1
      "no more bottles of beer on the wall."
    else
      "#{num_of_bottles - 1} #{num_of_bottles - 1 == 1 ? 'bottle' : 'bottles' } of beer on the wall."
    end
  end

  def bottle_or_bottles(num_of_bottles)
    num_of_bottles == 1 ? 'bottle' : 'bottles'
  end
end