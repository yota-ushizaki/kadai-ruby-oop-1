class Team
    attr_accessor :name, :win, :lose, :draw, :win_rate
    
    def initialize(name:,win:,lose:,draw:)
        self.name = name
        self.win = win
        self.lose = lose
        self.draw = draw
        self.win_rate = win_rate
    end

    def calc_win_rate
        win_rate  = win.to_f / (win.to_f + lose.to_f)
        return win_rate
    end
    
    def show_team_result
        puts "#{self.name} の2020年の成績は #{self.win}勝 #{self.lose}敗 #{self.draw}分、勝率は #{calc_win_rate}です。 "
    end

team1 = Team.new(name: "Giants", win: 67, lose: 45, draw: 8)
team1.show_team_result
team2 = Team.new(name: "Tigers", win: 60, lose: 53, draw: 7)
team2.show_team_result
team3 = Team.new(name: "Dragons", win: 60, lose: 55, draw: 5)
team3.show_team_result
team4 = Team.new(name: "BayStars", win: 56, lose: 58, draw: 6)
team4.show_team_result
team5 = Team.new(name: "Carp", win: 52, lose: 56, draw: 12)
team5.show_team_result
team6 = Team.new(name: "Swallows", win: 41, lose: 69, draw:10)
team6.show_team_result

end