
require "./character.rb"

class Brave < Character
  def attack(brave, monster)
    puts "#{brave.name} の攻撃！"
    monster_damege = brave.offense - monster.defense / 2
    monster.hp -= monster_damege
    if monster.hp > 0
      puts "#{monster.name}に #{monster_damege} のダメージを与えた！"
    else
      puts "#{monster.name}に #{monster_damege} のダメージを与えた！"
      puts <<~TEXT
      *=*=*=*=*=*=*=*=*=*=*
      【#{brave.name}】HP: #{brave.hp}
      【#{monster.name}】HP: 0
      *=*=*=*=*=*=*=*=*=*=*
      #{monster.name}をやっつけた！
      TEXT
    end
  end
end
