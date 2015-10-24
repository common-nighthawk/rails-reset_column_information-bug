class AddSoundToAnimalsAndData < ActiveRecord::Migration
  def change
    add_column :animals, :greeting, :string

    Animal.reset_column_information

    Animal.find_by(type: nil).update_attributes(greeting: 'im an animal')
    Animal.find_by(type: 'Bird').update_attributes(greeting: 'im a bird')
    Animal.find_by(type: 'Parrot').update_attributes(greeting: 'im a parrot')
    Animal.find_by(type: 'Owl').update_attributes(greeting: 'im an owl')
  end
end
