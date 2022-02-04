=begin
Write your code for the 'Tournament' exercise in this file. Make the tests in
`tournament_test.rb` pass.

To get started with TDD, see the `README.md` file in your
`ruby/tournament` directory.
=end

class Tournament

  def self.tally(input = "")
    summary = input.split("\n")
    padding = 31
    output = "Team".ljust(padding) + "| MP |  W |  D |  L |  P\n"
    teams = {}

    # if the input is empty, return with just the title.
    if summary.length == 0
      return output
    end
    
    # else, read line by line and add each teams stat to a team hash
    summary.each do |line|
      words = line.split(";")
      t1 = words[0]
      t2 = words[1]
      win_loss = words[2]

      # update team 1 with new stats
      if teams[t1]
        teams[t1][:games_played] += 1
        if win_loss == "win"
          teams[t1][:wins] += 1
        elsif win_loss == "loss"
          teams[t1][:losses] += 1
        else
          teams[t1][:draws] += 1
        end
      else
        teams[t1] = {
          name: t1,
          games_played: 1,
          wins: win_loss == "win" ? 1 : 0,
          losses: win_loss == "loss" ? 1 : 0,
          draws: win_loss == "draw" ? 1 : 0,
          points: 0,
        }
      end

      # update team 2 with new stats
      if teams[t2]
        teams[t2][:games_played] += 1
        if win_loss == "win"
          teams[t2][:losses] += 1
        elsif win_loss == "loss"
          teams[t2][:wins] += 1
        else
          teams[t2][:draws] += 1
        end
      else
        teams[t2] = {
          name: t2,
          games_played: 1,
          wins: win_loss == "loss" ? 1 : 0,
          losses: win_loss == "win" ? 1 : 0,
          draws: win_loss == "draw" ? 1 : 0,
          points: 0,
        }
      end
    end

    # FIXME: can I refactor and reduce the number of loops below?
    teams.each do |team, stats|
      stats[:points] = ((3 * stats[:wins]) + stats[:draws])
    end

    # sort the teams by points earned
    teams = teams.sort_by { |k, v| v[:points] }
    teams.reverse!

    teams.each do |team, stats|
      output += "#{team}".ljust(padding) + "|  #{stats[:games_played]}" + " |  #{ stats[:wins]}" + " |  #{ stats[:draws]}" + " |  #{ stats[:losses]}" + " |  #{ stats[:points]}\n"
    end

    output
  end
end


input = <<~INPUT
  Allegoric Alaskans;Blithering Badgers;win
  Devastating Donkeys;Courageous Californians;draw
  Devastating Donkeys;Allegoric Alaskans;win
  Courageous Californians;Blithering Badgers;loss
  Blithering Badgers;Devastating Donkeys;loss
  Allegoric Alaskans;Courageous Californians;win
INPUT

puts Tournament.tally(input)