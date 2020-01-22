class SlotMachine
  # create an array with OPTIONS
  OPTIONS = %w[cherry seven bell star joker]

  def score(reels)
    # reels == ['seven', 'cherry', 'star']
    # if all the reels are the same
    if reels.uniq.length == 1
      index = OPTIONS.index(reels.first)
      return (index + 1) * 10
    # else if two of the reels are the same + joker
    elsif reels.uniq.length == 2 && reels.include?('joker')
      index = OPTIONS.index(reels.sort[1])
      return (index + 1) * 5
    # else (none are the same)
    else
      return 0
    end

    # return an integer
  end
end
