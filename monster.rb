
require "./character.rb"

class Monster < Character
  def appear(monster)
    puts "#{monster.name}があらわれた！"
  end

  def attack(monster, brave)
    puts "#{monster.name} の攻撃！"
    brave_damege = monster.offense - brave.defense / 2
    brave.hp -= brave_damege
    puts "#{brave.name}は #{brave_damege} のダメージを受けた！"
  end
end
