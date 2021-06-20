
require "./character.rb"

class Monster < Character
  def appear(monster)
    puts "#{monster.name}があらわれた！"
  end

  def attack(monster, brave)
    puts "#{monster.name} の攻撃！"
    brave_damege = monster.offense - brave.defense / 2
    brave.hp -= brave_damege
    if brave.hp > 0
      puts "#{brave.name}は #{brave_damege} のダメージを受けた！"
    else
      puts "#{brave.name}は #{brave_damege} のダメージを受けた！"
      puts <<~TEXT
      *=*=*=*=*=*=*=*=*=*=*
      【#{brave.name}】HP: 0
      【#{monster.name}】HP: #{monster.hp}
      *=*=*=*=*=*=*=*=*=*=*
      #{brave.name}は死んでしまった！
      TEXT
    end
  end
end
