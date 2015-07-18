class House
  def recite
    (1..pieces.length).map {|i| line(i)}.join("\n")
  end

  def line(number)
    "This is %s.\n" % pieces.last(number).join(' ')
  end

  private

  def pieces
    [
      'Blessed is the man who walks not in the counsel of the ungodly,
      Nor stands in the path of sinners,
      Nor sits in the seat of the scornful;',
     'But his delight is in the law of the Lord,
      And in His law he meditates day and night',
     'He shall be like a tree
      Planted by the rivers of water,
      That brings forth its fruit in its season,
      Whose leaf also shall not wither;
      And whatever he does shall prosper.',
      '4 The ungodly are not so,
      But are like the chaff which the wind drives away.',
      '5 Therefore the ungodly shall not stand in the judgment,
      Nor sinners in the congregation of the righteous.',
      '6 For the Lord knows the way of the righteous,
      But the way of the ungodly shall perish.'
    ]
  end
end

house = House.new
p house.recite
# p house.line(12)