class BeerSong
  def self.recite(bottles, n)
    string = ""

    n.times do
      string << "\n" unless string.empty?

      case bottles
      when 0
        string << "No more bottles of beer on the wall, no more bottles of beer.\n"\
                  "Go to the store and buy some more, 99 bottles of beer on the wall.\n"
        bottles = 99
      when 1
        string << "#{bottles} bottle of beer on the wall, #{bottles} bottle of beer.\n"\
                  "Take it down and pass it around, no more bottles of beer on the wall.\n"
        bottles -= 1
      when 2
        string << "#{bottles} bottles of beer on the wall, #{bottles} bottles of beer.\n"\
                  "Take one down and pass it around, #{bottles - 1} bottle of beer on the wall.\n"
        bottles -= 1
      else
        string << "#{bottles} bottles of beer on the wall, #{bottles} bottles of beer.\n"\
                  "Take one down and pass it around, #{bottles - 1} bottles of beer on the wall.\n"
        bottles -= 1
      end
    end

    return string
  end
end
