
require "./character.rb"

class Brave < Character
  def attack(brave, monster)
    puts "#{brave.name} の攻撃！"
    monster_damege = brave.offense - monster.defense / 2
    monster.hp -= monster_damege
    puts "#{monster.name}に #{monster_damege} のダメージを与えた！"
  end
end
