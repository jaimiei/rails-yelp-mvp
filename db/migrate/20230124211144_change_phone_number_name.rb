class ChangePhoneNumberName < ActiveRecord::Migration[7.0]
  def change
    rename_column :restaurants, :phone_nummber, :phone_number
  end
end
