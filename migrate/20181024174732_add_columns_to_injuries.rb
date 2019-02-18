class AddColumnsToInjuries < ActiveRecord::Migration[5.1]
  def change
    add_column :injuries, :sport, :string
    add_column :injuries, :name, :string
    add_column :injuries, :exposure, :string
    add_column :injuries, :date, :date
    add_column :injuries, :reportnotes, :text
    add_column :injuries, :side, :string
    add_column :injuries, :part, :string
    add_column :injuries, :type, :string
    add_column :injuries, :symptoms, :text
    add_column :injuries, :injurynotes, :text
    add_column :injuries, :immediatetreatment, :string
    add_column :injuries, :returndate, :date
    add_column :injuries, :return, :boolean
  end
end
