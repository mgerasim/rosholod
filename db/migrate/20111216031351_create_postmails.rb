class CreatePostmails < ActiveRecord::Migration
  def change
    create_table :postmails do |t|
      t.string :recipiend
      t.string :subject
      t.string :fullname
      t.string :phone
      t.string :email
      t.string :message

      t.timestamps
    end
  end
end
