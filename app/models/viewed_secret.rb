class ViewedSecret < ActiveRecord::Base
  set_primary_key :userid
  belongs_to :account, :foreign_key=> :userid
  
end



# == Schema Information
#
# Table name: viewed_secrets
#
#  userid :integer         not null, primary key
#  date   :datetime
#

