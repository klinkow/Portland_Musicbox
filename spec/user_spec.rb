require 'spec_helper'
 describe User do
   it {should have_and_belong_to_many :purchases}
   it {should have_one :artist}
   describe(".current_user") do
     it("returns and empy array for current user object if no one has logged in") do
       @current = User.new(current: false)
       @current.save
       expect(User.current_user).to(eq([]))
     end
   end

   describe(".current_user") do
     it("returns the current user object when someone logs-in") do
       @current = User.new(fname: "tyler", lname: "Ferrin", street: "sesame st.", city: "brooklyn", state: "NY", zip: 10010, username: "Bigbirdy", password: "bert", current: true)
       @current.save
       expect(User.current_user).to(eq([@current]))
     end
   end
 end
