class Character
  attr_reader :name, :offense, :defense
  attr_accessor :hp

  def initialize(name:, hp:, offense:, defense:)
    @name = name
    @hp = hp
    @offense = offense
    @defense = defense
  end

  def disp_status(brave, monster)
    puts <<~TEXT
    *=*=*=*=*=*=*=*=*=*=*
    【#{brave.name}】HP: #{brave.hp}
    【#{monster.name}】HP: #{monster.hp}
    *=*=*=*=*=*=*=*=*=*=*
    TEXT
  end
end
