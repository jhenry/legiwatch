Factory.define :legislator do |u|
    u.sequence(:first_name) {|n| "Legislator #{n.to_s}"}
    u.sequence(:last_name) {|n| "Coolio #{n.to_s}"}
    u.sequence(:address1) {|n| "#{n.to_s} Oak Street"}
    u.sequence(:address2) {|n| "Apt. #{n.to_s}"}
    u.sequence(:town) {|n| "City #{n.to_s}"}
    u.sequence(:state) {|n| "ME"}
    u.sequence(:zip) {|n| "1234#{n.to_s}"}
    u.sequence(:zip4) {|n| "123#{n.to_s}"}
end