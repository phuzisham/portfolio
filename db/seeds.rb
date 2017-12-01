Project.destroy_all

project_list = [
  ["Sample Project", "Sample description...I figure, if I'm responsible for the end of the world, I get to name it. Who's calling me? Everybody I know lives here. I saw their production of 'Giselle' in 1890. I wept like a baby, and I was evil! Somebody put her tiny little thinking cap on! My Uncle Rory was the stodgiest taxidermist you've ever met by day. And you know the monkey's just,'I mock you with my monkey pants!' And what's with all the carrots? How did your brain even learn human speech? I'm just so curious. Shh! No programs, don't use that word. Just be."]
]

#seeding projects
project_list.each do |title, description|
  Project.create( title: title, description: description )
end

p "Created #{Project.count} project."
