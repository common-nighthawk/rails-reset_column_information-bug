class CreateAnimals < ActiveRecord::Migration
  def change
    create_table :animals do |t|
      t.string :type

      t.timestamps
    end

    Animal.create
    Bird.create
    Parrot.create
    Owl.create
  end
end
