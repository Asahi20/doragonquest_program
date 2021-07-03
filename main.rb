
require "./brave.rb"
require "./monster.rb"

brave = Brave.new(name: "ゆうしゃ", hp: 238, offense: 203, defense: 129)
# monster = Monster.new(name: "アークデーモン", hp: 210, offense: 140, defense: 80)
monster = Monster.new(name: "シドー", hp: 250, offense: 255, defense: 255)


monster.appear(monster)
until brave.hp <= 0 || monster.hp < 0 do
  brave.attack(brave, monster)
  if monster.hp <= 0
    Character.disp_status(brave, monster)
  end
  break if monster.hp <= 0
  monster.attack(monster, brave)
  if brave.hp <= 0
    Character.disp_status(brave, monster)
  end
  break if brave.hp <= 0
  Character.disp_status(brave, monster)
end
